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

ActiveRecord::Schema.define(version: 20151123154958) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "age"
    t.boolean  "basic_start"
    t.integer  "days_of_7_vig"
    t.integer  "mins_vig_per_day"
    t.integer  "days_of_7_mod"
    t.integer  "mins_mod_per_day"
    t.integer  "days_of_7_walk"
    t.integer  "mins_walk_per_day"
    t.integer  "mins_weekday_sitting"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
