class User < ApplicationRecord
  def users_tests(level)
    Test.joins("left join users_tests ON tests.id = users_tests.test_id").
    where(level: level, user_id: self.id)
  end
end
