class Test < ApplicationRecord
  belongs_to :category

  def self.tests_categories(category)
    Test.
      joins("left join tests_categories ON tests.id = tests_categories.test_id").
      order("id DESC").where(category: category)
  end
end
