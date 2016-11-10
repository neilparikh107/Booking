class Booking < ApplicationRecord
 belongs_to :customer

 validates :email, presence: true#, uniqueness: true
 validates :name,:street,:suburb, presence: true
end
