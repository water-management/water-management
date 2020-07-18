class CreateCustomersMeterReaders < ActiveRecord::Migration[6.0]
  def change
    create_table :customers_meter_readers do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :meter_reader, null: false, foreign_key: true

      t.timestamps
    end
  end
end
