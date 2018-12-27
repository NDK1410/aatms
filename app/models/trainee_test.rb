class TraineeTest < ApplicationRecord
  belongs_to :subject_test
  belongs_to :trainee_subject
  has_many :trainee_questions
  has_many :test_questions, through: :trainee_questions
  has_many :trainee_answers
end
