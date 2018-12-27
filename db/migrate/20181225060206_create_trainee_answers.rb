class CreateTraineeAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainee_answers do |t|
      t.references :trainee_test, foreign_key: true
      t.integer :answer_of_question_id

      t.timestamps
    end
    add_index :trainee_answers, :answer_of_question_id
  end
end
