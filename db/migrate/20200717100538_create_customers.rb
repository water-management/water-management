class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.integer :meter_number
      t.string :name
      t.integer :phone_number
      t.string :address

      t.timestamps
    end

    add_index :customers, :meter_number, unique: true
  end
end
