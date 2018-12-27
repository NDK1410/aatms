class CreateTraineeTests < ActiveRecord::Migration[5.2]
  def change
    create_table :trainee_tests do |t|
      t.references :subject_test, foreign_key: true
      t.references :trainee_subject, foreign_key: true
      t.integer :mark
      t.time :testing_time
      t.datetime :created_time

      t.timestamps
    end
  end
end
