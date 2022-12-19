class Test < ApplicationRecord

  INFINITY = Float::INFINITY
  
  belongs_to :creator, foreign_key: "user_id", class_name: "User"
  belongs_to :category
  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users

  validates :title, presence: true,
                    uniqueness: true
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 },
                    uniqueness: true

  scope :easy, -> { where(level: 0..1) }
  scope :middle, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..INFINITY) }

  scope :tests_categories, -> (category) { categories.where(title: category).order(title: :desc) }
end
