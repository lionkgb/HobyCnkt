class Course < ApplicationRecord
  geocoded_by :address
  after_validation :geocode
  belongs_to :day, optional:true
  belongs_to :category, optional: true
  has_many :course_days
  has_many :days, through: :course_days
  belongs_to :organization
  has_many :bookings
  belongs_to :user
end
