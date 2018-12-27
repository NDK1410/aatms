class TestQuestion < ApplicationRecord
  belongs_to :subject_test
  has_many :answers_of_questions
  has_many :test_answers, through: :answers_of_questions
  has_many :trainee_questions
  has_many :trainee_tests, through: :trainee_questions
end
