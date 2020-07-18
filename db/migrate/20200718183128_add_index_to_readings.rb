class AddIndexToReadings < ActiveRecord::Migration[6.0]
  def change
    add_index :readings, [:meter_unit, :customer_id], unique: true
  end
end
