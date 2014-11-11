class AddFieldsToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :street, :string
    add_column :customers, :town, :string
    add_column :customers, :city, :string
    add_column :customers, :telephone_number, :string
    add_column :customers, :contact_name, :string
    add_column :customers, :email_address, :string
  end
end
