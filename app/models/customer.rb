class Customer < ApplicationRecord
  has_many :readings
  has_many :customers_meter_readers
  has_many :meter_readers, through: :customers_meter_readers
end
