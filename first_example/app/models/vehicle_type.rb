class VehicleType < ApplicationRecord
  has_many :vehicles
  has_many  :cost, # ->(cost) {where(status: cost.status.active)}
end
