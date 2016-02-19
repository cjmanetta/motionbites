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

ActiveRecord::Schema.define(version: 20151125022912) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.string   "legacy_id"
    t.string   "legacy_prereqs"
    t.text     "description"
    t.integer  "exertion"
    t.integer  "technicality"
    t.string   "equipment"
    t.integer  "flexibility"
    t.integer  "balance"
    t.integer  "strength"
    t.boolean  "breathing"
    t.string   "muscle_1"
    t.string   "muscle_2"
    t.string   "muscle_3"
    t.string   "muscle_stretched"
    t.string   "origin"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "prerequisiteships", force: :cascade do |t|
    t.integer  "exercise_id"
    t.integer  "prerequisite_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "prerequisiteships", ["exercise_id"], name: "index_prerequisiteships_on_exercise_id", using: :btree
  add_index "prerequisiteships", ["prerequisite_id"], name: "index_prerequisiteships_on_prerequisite_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.boolean  "admin",                default: false
    t.string   "password_digest"
    t.string   "birthdate"
    t.boolean  "basic_start"
    t.integer  "days_of_7_vig"
    t.integer  "mins_vig_per_day"
    t.integer  "days_of_7_mod"
    t.integer  "mins_mod_per_day"
    t.integer  "days_of_7_walk"
    t.integer  "mins_walk_per_day"
    t.integer  "mins_weekday_sitting"
    t.boolean  "org_pa"
    t.integer  "viewership_level"
    t.integer  "fitness_score"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "views", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "exercise_id"
    t.datetime "datetime_viewed"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "views", ["exercise_id"], name: "index_views_on_exercise_id", using: :btree
  add_index "views", ["user_id"], name: "index_views_on_user_id", using: :btree

end
