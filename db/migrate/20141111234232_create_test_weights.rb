class CreateTestWeights < ActiveRecord::Migration
  def change
    create_table :test_weights do |t|
      t.string :certificate_number
      t.date :date_calibrated

      t.timestamps
    end
  end
end
