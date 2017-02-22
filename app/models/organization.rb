class Organization < ApplicationRecord
  belongs_to :user, optional: true 
  has_many :courses
end
