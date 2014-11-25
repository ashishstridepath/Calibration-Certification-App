class AddCertificateNumberToTest < ActiveRecord::Migration
  def change
    add_column :certificates, :test_weight_1_certificate_number, :string
    add_column :certificates, :test_weight_2_certificate_number, :string
    add_column :certificates, :test_weight_3_certificate_number, :string
  end
end
