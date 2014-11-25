class AddNameToTestWeight < ActiveRecord::Migration
  def change
    add_column :test_weights, :name, :string
  end
end
