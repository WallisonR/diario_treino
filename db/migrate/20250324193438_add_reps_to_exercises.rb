class AddRepsToExercises < ActiveRecord::Migration[8.0]
  def change
    add_column :exercises, :reps, :integer
  end
end
