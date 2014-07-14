class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.date :start
      t.date :end
      t.references :training, index: true
      t.references :student, index: true

      t.timestamps
    end
  end
end
