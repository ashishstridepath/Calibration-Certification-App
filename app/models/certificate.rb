class Certificate < ActiveRecord::Base

	belongs_to :machine
	belongs_to :customer


  attr_accessible :certificate_number, :customer_id, :machine_id, :testpoint_1, :testpoint_2, :testpoint_3, :testpoint_4,
  :testpoint_5, :testpoint_6, :as_found_testpoint_1, :as_found_testpoint_2, :as_found_testpoint_3, :as_found_testpoint_4,
  :as_found_testpoint_5, :as_found_testpoint_6, :as_found_testpoint_1_dev, :as_found_testpoint_2_dev,
  :as_found_testpoint_3_dev, :as_found_testpoint_4_dev, :as_found_testpoint_5_dev, :as_found_testpoint_6_dev,
  :definitive_testpoint_1, :definitive_testpoint_2, :definitive_testpoint_3, :definitive_testpoint_4,
  :definitive_testpoint_5, :definitive_testpoint_6, :definitive_testpoint_1_dev, :definitive_testpoint_2_dev,
  :definitive_testpoint_3_dev, :definitive_testpoint_4_dev, :definitive_testpoint_5_dev, :definitive_testpoint_6_dev,
  :as_found_repeatability_1_load, :as_found_repeatability_2_load, :as_found_repeatability_3_load,
  :as_found_repeatability_1_result_1, :as_found_repeatability_2_result_1, :as_found_repeatability_3_result_1,
  :as_found_repeatability_1_result_2, :as_found_repeatability_2_result_2, :as_found_repeatability_3_result_2,
  :as_found_repeatability_1_result_3, :as_found_repeatability_2_result_3, :as_found_repeatability_3_result_3,
  :definitive_repeatability_1_load, :definitive_repeatability_2_load, :definitive_repeatability_3_load,
  :definitive_repeatability_1_result_1, :definitive_repeatability_2_result_1, :definitive_repeatability_3_result_1,
  :definitive_repeatability_1_result_2, :definitive_repeatability_2_result_2, :definitive_repeatability_3_result_2,
  :definitive_repeatability_1_result_3, :definitive_repeatability_2_result_3, :definitive_repeatability_3_result_3

  validates :machine_id, presence: true

  #after_initialize :set_suggested_test_points

  before_save :set_defaults, :calculate_tolerance_ranges, :get_certificate_number
  after_save :update_next_due

  def get_certificate_number
    new_cert_number = 500 #Certificate.last.certificate_number + 1 || 5000
    self.certificate_number = new_cert_number

  end
  def set_defaults
  	
  	self.date_completed = Date.today
  	self.next_certification_date = next_due_date
  end

  def next_due_date
  	#TODO Create a function to update the next due date based on the machine schedule!!
  	#TODO Also update the schedule on machine with the new next due date 
  	self.machine.due_date + 6.months

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
