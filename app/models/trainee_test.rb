class TraineeTest < ApplicationRecord
  belongs_to :subject
  belongs_to :course_trainee
  has_many :trainee_questions
  has_many :test_questions, through: :trainee_questions
  # default_scope -> { order(created_at: :desc) }
  accepts_nested_attributes_for :trainee_questions

  def update_test (params_trainee_answer)
  	ActiveRecord::Base.transaction do
      @answers = TraineeAnswer.answer_of_trainee(params_trainee_answer)
      @answers.each do |answer|
        answer.update_attributes!(status: answer.test_answer.status)
      end
      test_score = @answers.score_of_trainee.count
      self.update_attributes!(score: test_score)
    end
  end

  def update_score(params_score)
    ActiveRecord::Base.transaction do
      self.update_attributes!(score: params_score)
    end
  end
end
