class Cost < ApplicationRecord
  enum status: [:active, :inactive]

  has_one :vehicle_type 
end
