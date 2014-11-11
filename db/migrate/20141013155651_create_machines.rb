class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.integer :customer_id
      t.string :make
      t.string :model
      t.string :serial_number
      t.integer :capacity
      t.decimal :division_size
      t.string :units
      t.date :last_calibration_date
      t.date :due_date

      t.timestamps
    end
  end
end
