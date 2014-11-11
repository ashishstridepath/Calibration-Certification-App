class AddEmailSentToCertificates < ActiveRecord::Migration
  def change
    add_column :certificates, :emailSent, :boolean
  end
end
