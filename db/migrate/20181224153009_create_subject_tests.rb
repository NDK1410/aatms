class CreateSubjectTests < ActiveRecord::Migration[5.2]
  def change
    create_table :subject_tests do |t|
      t.integer :subject_id

      t.timestamps
    end
    add_index :subject_tests, :subject_id
  end
end
