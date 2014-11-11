class AddMultiRangeToMachines < ActiveRecord::Migration
  def change
    add_column :machines, :capacity_2, :integer
    add_column :machines, :division_size_2, :decimal
    add_column :machines, :capacity_3, :integer
    add_column :machines, :division_size_3, :decimal
    add_column :machines, :multiRange, :boolean
  end
end
