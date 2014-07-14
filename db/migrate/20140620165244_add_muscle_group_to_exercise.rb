class AddMuscleGroupToExercise < ActiveRecord::Migration
  def change
    add_reference :exercises, :muscle_group, index: true
  end
end
