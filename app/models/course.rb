class Course < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :organization, optional: true
  has_many :users, through: :bookings

end
