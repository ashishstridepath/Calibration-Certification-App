class AddTestWeightsToCertificate < ActiveRecord::Migration
  def change
    add_column :certificates, :test_weight_1_set_number, :string
    add_column :certificates, :test_weight_1, :date
    add_column :certificates, :test_weight_2_set_number, :string
    add_column :certificates, :test_weight_2, :date
    add_column :certificates, :test_weight_3_set_number, :string
    add_column :certificates, :test_weight_3, :date
  end
end
