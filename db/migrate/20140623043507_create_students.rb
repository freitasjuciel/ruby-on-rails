class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.date :birthday
      t.string :phone
      t.string :cellphone
      t.text :observation

      t.timestamps
    end
  end
end
