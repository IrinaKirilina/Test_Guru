class Test < ApplicationRecord
  
  belongs_to :creator, class_name: "User"
  belongs_to :category
  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users

  def self.tests_categories(category)
    Test.joins("left join categories ON tests.category_id = categories.id").order('tests.title DESC').where(categories: { title: category }).pluck(:title)
  end
end
