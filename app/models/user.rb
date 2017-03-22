class User < ApplicationRecord
  has_secure_password
  belongs_to :role, optional: :true
  has_one :organization
  has_many :courses, through: :bookings
end

