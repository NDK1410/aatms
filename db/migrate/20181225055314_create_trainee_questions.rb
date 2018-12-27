class CreateTraineeQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :trainee_questions do |t|
      t.references :trainee_test, foreign_key: true
      t.references :test_question, foreign_key: true

      t.timestamps
    end
  end
end
