class Profile < ApplicationRecord
  belongs_to :person
  has_many :phones
  enum gender: {male: 0, female: 1}
end
