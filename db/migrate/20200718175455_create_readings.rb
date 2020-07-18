class CreateReadings < ActiveRecord::Migration[6.0]
  def change
    create_table :readings do |t|
      t.integer :meter_unit
      t.references :customer, null: false, foreign_key: true
      t.boolean :verified, default: false

      t.timestamps
    end
  end
end
