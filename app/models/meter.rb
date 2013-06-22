class Meter < ActiveRecord::Base
  belongs_to :location
  belongs_to :meter_status
  has_many :energy_measurements
  has_many :readings
end
