# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140623172947) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercises", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "muscle_group_id"
  end

  add_index "exercises", ["muscle_group_id"], name: "index_exercises_on_muscle_group_id", using: :btree

  create_table "exercises_trainings", id: false, force: true do |t|
    t.integer "exercise_id", null: false
    t.integer "training_id", null: false
  end

  create_table "muscle_groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "records", force: true do |t|
    t.date     "start"
    t.date     "end"
    t.integer  "training_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "records", ["student_id"], name: "index_records_on_student_id", using: :btree
  add_index "records", ["training_id"], name: "index_records_on_training_id", using: :btree

  create_table "students", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "phone"
    t.string   "cellphone"
    t.text   "observation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "gender"
  end

  create_table "trainings", force: true do |t|
    t.string   "name"
    t.integer  "series"
    t.string   "repetitions"
    t.integer  "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
