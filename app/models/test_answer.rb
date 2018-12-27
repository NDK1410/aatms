class TestAnswer < ApplicationRecord
  has_many :answers_of_questions
  has_many :test_questions, through: :answers_of_questions
end
