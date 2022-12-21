class Test < ApplicationRecord

  INFINITY = Float::INFINITY
  
  belongs_to :creator, foreign_key: "user_id", class_name: "User"
  belongs_to :category
  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users

  validates :title, presence: true, 
                    uniqueness: { scope: :level}
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 },
                    uniqueness: true

  scope :easy, -> { where(level: 0..1) }
  scope :middle, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..INFINITY) }

  scope :test_by_category, -> (category_name) { joins(:category).where(categories: { title: category_name }) }

  def self.test_categories(category_name)
    test_by_category(category_name).order(title: :desc).pluck(:title)
  end
end

