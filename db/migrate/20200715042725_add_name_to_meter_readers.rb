class AddNameToMeterReaders < ActiveRecord::Migration[6.0]
  def change
    add_column :meter_readers, :name, :string
  end
end
