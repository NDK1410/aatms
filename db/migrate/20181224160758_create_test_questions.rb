class CreateTestQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :test_questions do |t|
      t.text :question
      t.references :subject_test, foreign_key: true

      t.timestamps
    end
  end
end
