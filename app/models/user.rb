class User < ApplicationRecord

  has_many :created_tests, class_name: "Test" 
  has_many :tests_users
  has_many :tests, through: :tests_users

  def users_tests(level)
    Test.joins("left join users_tests ON tests.id = users_tests.test_id").
    where(level: level, user_id: self.id)
  end
end
