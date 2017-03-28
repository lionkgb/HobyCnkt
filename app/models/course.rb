class Course < ApplicationRecord
  belongs_to :day, optional:true
  belongs_to :category, optional: true
  has_many :course_days
  has_many :days, through: :course_days
  has_many :users, through: :bookings

end
