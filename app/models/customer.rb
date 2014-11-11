class Customer < ActiveRecord::Base

	has_many :machines, :dependent => :delete_all
	has_many :certificates, :dependent => :delete_all

 attr_accessible :account_number, :address, :name, :street, :town, :city, :telephone_number, :email_address, :contact_name

 validates :name, presence: true
 validates :account_number, presence: true

 default_scope :order => 'name ASC'

end
