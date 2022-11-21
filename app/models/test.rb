class Test < ApplicationRecord
  belongs_to :category
  belongs_to :user 
  has_many :questions
  has_and_belongs_to_many :users 

  def self.tests_categories(category)
    Test.joins("left join categories ON tests.category_id = categories.id").order('tests.title DESC').where(categories: { title: category }).pluck(:title)
  end
end
