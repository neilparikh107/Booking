class Customer < ApplicationRecord
  has_many :bookings
  validates :email, uniqueness: true
end
