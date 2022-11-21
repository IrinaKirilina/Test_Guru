class User < ApplicationRecord
  has_and_belongs_to_many :tests 

  def users_tests(level)
    Test.joins("left join users_tests ON tests.id = users_tests.test_id").
    where(level: level, user_id: self.id)
  end
end
