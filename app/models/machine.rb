class Machine < ActiveRecord::Base

	belongs_to :customer
	has_many :certificates, :foreign_key => 'machine_id'

  attr_accessible :capacity, :customer_id, :division_size, :due_date, :last_calibration_date, :make, :model, :serial_number, :units,
  					:capacity_2, :division_size_2, :capacity_3, :division_size_3, :multiRange 

  	validates :customer_id, presence: true
end
