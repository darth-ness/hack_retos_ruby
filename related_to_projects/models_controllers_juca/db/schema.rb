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

ActiveRecord::Schema.define(version: 20160926144008) do

  create_table "people", force: :cascade do |t|
    t.string   "email",      limit: 100
    t.string   "password",   limit: 45
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string   "phone_number", limit: 10
    t.integer  "profile_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["profile_id"], name: "index_phones_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "dni",        limit: 45
    t.string   "name",       limit: 45
    t.string   "lastname",   limit: 45
    t.date     "birthday"
    t.boolean  "car"
    t.integer  "gender"
    t.integer  "person_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["person_id"], name: "index_profiles_on_person_id"
  end

end
