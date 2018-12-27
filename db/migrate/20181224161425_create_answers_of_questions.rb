class CreateAnswersOfQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :answers_of_questions do |t|
      t.references :test_answer, foreign_key: true
      t.references :test_question, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
