class Answer < ApplicationRecord

  QUESTION_ANSWERS_MAX_COUNT = 4

  belongs_to :question

  validates :body, presence: true
  validate :validate_question_answers_count
  
  scope :correct_answer, -> { where(correct: true) }

  private 

  def validate_question_answers_count
    errors.add(:base) if question.answers.count > QUESTION_ANSWERS_MAX_COUNT
  end
end
