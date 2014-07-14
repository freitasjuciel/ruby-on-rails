class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :name
      t.integer :series
      t.string :repetitions
      t.integer :time

      t.timestamps
    end
  end
end
