class CustomersMeterReader < ApplicationRecord
  belongs_to :customer
  belongs_to :meter_reader
end
