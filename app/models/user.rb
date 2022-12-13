class User < ApplicationRecord

  has_many :created_tests, foreign_key: "user_id", class_name: "Test" 
  has_many :tests_users
  has_many :tests, through: :tests_users

  def users_tests(level)
    Test.joins(:tests_users).where(level: level, user_id: self.id)
  end
end
