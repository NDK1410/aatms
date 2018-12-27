class TraineeQuestion < ApplicationRecord
  belongs_to :trainee_test
  belongs_to :test_question
end
