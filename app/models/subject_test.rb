class SubjectTest < ApplicationRecord
  belongs_to :subject
  has_many :test_questions
  has_many :trainee_tests
  has_many :trainee_subjects, through: :trainee_tests
end
