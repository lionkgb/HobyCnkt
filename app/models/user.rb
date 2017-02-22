class User < ApplicationRecord
  belongs_to :role, optional: :true
  has_one :organization
  has_many :courses, through: :bookings
end

