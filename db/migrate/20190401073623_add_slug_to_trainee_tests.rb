class AddSlugToTraineeTests < ActiveRecord::Migration[5.2]
  def change
    add_column :trainee_tests, :slug, :string
  end
end
