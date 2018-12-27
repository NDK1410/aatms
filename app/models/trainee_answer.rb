class TraineeAnswer < ApplicationRecord
  belongs_to :trainee_test
  belongs_to :answers_of_question
end
