class CreateTestAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :test_answers do |t|
      t.text :answer

      t.timestamps
    end
  end
end
