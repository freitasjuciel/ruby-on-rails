class CreateJoinTableExercisesTrainings < ActiveRecord::Migration
  def change
    create_table "exercises_trainings", :id => false do |t|
      t.column "exercise_id", :integer, :null => false
      t.column "training_id",  :integer, :null => false
    end
  end
end
