class Course < ApplicationRecord
  has_many :course_users
  belongs_to :country
  has_many :expressions
end
