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

ActiveRecord::Schema.define(version: 20160923134037) do

  create_table "grade_levels", force: :cascade do |t|
    t.string   "name"
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.string   "name"
    t.integer  "school_id"
    t.integer  "grades_level_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["grades_level_id"], name: "index_grades_on_grades_level_id"
    t.index ["school_id"], name: "index_grades_on_school_id"
  end

  create_table "grades_levels", force: :cascade do |t|
    t.string   "name"
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_schools_on_user_id"
  end

  create_table "students", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "grade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_students_on_grade_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.integer  "grade_id"
    t.string   "name"
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_subjects_on_grade_id"
  end

  create_table "subjects_teachers", force: :cascade do |t|
    t.integer "subject_id"
    t.integer "teacher_id"
    t.index ["subject_id"], name: "index_subjects_teachers_on_subject_id"
    t.index ["teacher_id"], name: "index_subjects_teachers_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_teachers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "full_name"
    t.string   "email"
    t.string   "password"
    t.date     "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
