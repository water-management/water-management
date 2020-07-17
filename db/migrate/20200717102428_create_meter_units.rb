class CreateMeterUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :meter_units do |t|
      t.integer :unit
      t.references :customer, null: false, foreign_key: true
      t.boolean :verified, default: false

      t.timestamps
    end
  end
end
