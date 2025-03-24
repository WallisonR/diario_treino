class AddWeightToExercises < ActiveRecord::Migration[8.0]
  def change
    add_column :exercises, :weight, :float
  end
end
