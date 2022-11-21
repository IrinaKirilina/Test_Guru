class Test < ApplicationRecord
  belongs_to :category

  def self.tests_categories(category)
    Test.joins("left join categories ON tests.category_id = categories.id").order('tests.title DESC').where(categories: { title: category }).pluck(:title)
  end
end
