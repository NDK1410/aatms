class AnswersOfQuestion < ApplicationRecord
  belongs_to :test_answer
  belongs_to :test_question
  has_one :trainee_answer
end
