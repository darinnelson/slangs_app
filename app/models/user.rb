class User < ApplicationRecord
  has_many :course_users
  has_many :courses, through: :course_users

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
