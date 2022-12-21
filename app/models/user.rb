class User < ApplicationRecord

  has_many :created_tests, foreign_key: "user_id", class_name: "Test" 
  has_many :tests_users
  has_many :tests, through: :tests_users

  def users_tests(level)
    tests.where(level: level)
  end
end
