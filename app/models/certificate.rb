class Certificate < ActiveRecord::Base

	belongs_to :machine
	belongs_to :customer


  attr_accessible :certificate_number, :customer_id, :machine_id, :testpoint_1, :testpoint_2, :testpoint_3,
  :testpoint_4, :testpoint_5, :testpoint_6, :definitive_testpoint_1, :definitive_testpoint_2, :definitive_testpoint_3,
  :definitive_testpoint_4, :definitive_testpoint_5, :definitive_testpoint_6, :definitive_testpoint_1_dev,
  :definitive_testpoint_2_dev, :definitive_testpoint_3_dev, :definitive_testpoint_4_dev, :definitive_testpoint_5_dev,
  :definitive_testpoint_6_dev, :definitive_repeatability_1_load, :definitive_repeatability_2_load,
  :definitive_repeatability_3_load, :definitive_repeatability_1_result_1, :definitive_repeatability_2_result_1,
  :definitive_repeatability_3_result_1, :definitive_repeatability_1_result_2, :definitive_repeatability_2_result_2,
  :definitive_repeatability_3_result_2, :definitive_repeatability_1_result_3, :definitive_repeatability_2_result_3,
  :definitive_repeatability_3_result_3, :repeatability_1_unloaded, :repeatability_2_unloaded, :repeatability_3_unloaded,
  :repeatability_4_unloaded, :repeatability_5_unloaded, :repeatability_6_unloaded, :repeatability_1_loaded,
  :repeatability_2_loaded, :repeatability_3_loaded, :repeatability_4_loaded, :repeatability_5_loaded,
  :repeatability_6_loaded, :definitive_eccentric_1, :definitive_eccentric_2, :definitive_eccentric_3,
  :definitive_eccentric_4, :definitive_eccentric_5, :definitive_eccentric_6, :test_weight_1_set_number, :test_weight_1_date,
  :test_weight_2_set_number, :test_weight_2_date, :test_weight_3_set_number, :test_weight_3_date, :weight_id_1,
  :weight_id_2, :weight_id_3,
  :test_weight_1_certificate_number , :test_weight_2_certificate_number , :test_weight_3_certificate_number

  validates :machine_id, presence: true

  #after_initialize :set_suggested_test_points

  before_save :set_defaults, :calculate_tolerance_ranges, :get_certificate_number, :set_weights
  after_save :update_next_due

  def get_certificate_number
    begin
      last_no = Certificate.last.certificate_number  
      new_cert_number = last_no + 1 
      self.certificate_number = new_cert_number
    rescue 
      self.certificate_number = 1
    end
  end

  def set_defaults
  	
  	self.date_completed = Date.today
  	self.next_certification_date = next_due_date
  end

  def next_due_date
  	#TODO Create a function to update the next due date based on the machine schedule!!
  	#TODO Also update the schedule on machine with the new next due date 
  	self.machine.due_date + 12.months

  end
  # Virtual Attributes
  def weight_id_1

  end
  def weight_id_1=(val)
    @weight_id_1 = val
  end
  def weight_id_2

  end
  def weight_id_2=(val)
    @weight_id_2 = val
  end
  def weight_id_3

  end
  def weight_id_3=(val)
    @weight_id_3 = val
  end
 # Set the test weight details in teh certiifcate incase old certificates are deleted 
  def set_weights
    if @weight_id_1
      weight = TestWeight.find_by_id(@weight_id_1)
      self.test_weight_1_set_number = weight.name
      self.test_weight_1 = weight.date_calibrated
      self.test_weight_1_certificate_number = weight.certificate_number
    end
    if @weight_id_2
      weight = TestWeight.find_by_id(@weight_id_2)
      self.test_weight_2_set_number = weight.name
      self.test_weight_2 = weight.date_calibrated
      self.test_weight_2_certificate_number = weight.certificate_number
    end
    if @weight_id_3
      weight = TestWeight.find_by_id(@weight_id_3)
      self.test_weight_3_set_number = weight.name
      self.test_weight_3 = weight.date_calibrated
      self.test_weight_3_certificate_number = weight.certificate_number
    end
  end

  def calculate_tolerance_ranges
    machine = Machine.find_by_id(self.machine_id)
    u = "#{machine.units}"
    self.tolerance_1_range = "#{machine.division_size - machine.division_size } #{u} - #{machine.division_size * 500} #{u}"
    self.tolerance_2_range = "#{machine.division_size * 500} #{u} - #{machine.division_size * 2000} #{u}"
    self.tolerance_3_range = "#{machine.division_size * 2000} #{u} - #{machine.capacity} #{u}"
    self.tolerance_1_actual = "#{machine.division_size} #{u}"
    self.tolerance_2_actual = "#{machine.division_size * 2} #{u}"
    self.tolerance_3_actual = "#{machine.division_size * 3} #{u}"
    #TODO add schedule number of months to machine model
    self.next_certification_date = Date.today + 12.months
  end

  def update_next_due

    machine = Machine.find_by_id(self.machine_id)
    #TODO add schedule number of months to machine model
    new_date = Date.today + 12.months

    machine.update_attributes(:due_date => new_date, :last_calibration_date => Date.today )
    
  end


end
