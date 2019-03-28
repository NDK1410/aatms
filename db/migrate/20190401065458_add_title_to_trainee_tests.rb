class AddTitleToTraineeTests < ActiveRecord::Migration[5.2]
  def change
    add_column :trainee_tests, :title, :string
  end
end
