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

ActiveRecord::Schema.define(version: 20140903003021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dead_people", force: true do |t|
    t.string   "name_first"
    t.string   "name_mid"
    t.string   "name_last"
    t.date     "date_death"
    t.date     "date_birth"
    t.string   "ssn"
    t.string   "cause"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "number_policies", force: true do |t|
    t.integer  "policy_amount"
    t.integer  "dead_person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "number_policies", ["dead_person_id"], name: "index_number_policies_on_dead_person_id", using: :btree

  create_table "policies", force: true do |t|
    t.string   "number_policy"
    t.integer  "face_value"
    t.integer  "dead_person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "policies", ["dead_person_id"], name: "index_policies_on_dead_person_id", using: :btree

end
