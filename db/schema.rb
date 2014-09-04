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


ActiveRecord::Schema.define(version: 20140903035614) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beneficiaries", force: true do |t|
    t.string   "name_first"
    t.string   "name_mid"
    t.string   "name_last"
    t.string   "ssn"
    t.date     "date_birth"
    t.date     "date_death"
    t.integer  "policy_id"
    t.integer  "dead_person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "beneficiaries", ["dead_person_id"], name: "index_beneficiaries_on_dead_person_id", using: :btree
  add_index "beneficiaries", ["policy_id"], name: "index_beneficiaries_on_policy_id", using: :btree

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

  create_table "documents", force: true do |t|
    t.string   "name"
    t.integer  "dead_person_id"
    t.integer  "beneficiary_id"
    t.integer  "policy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "documents", ["beneficiary_id"], name: "index_documents_on_beneficiary_id", using: :btree
  add_index "documents", ["dead_person_id"], name: "index_documents_on_dead_person_id", using: :btree
  add_index "documents", ["policy_id"], name: "index_documents_on_policy_id", using: :btree

  create_table "financials", force: true do |t|
    t.string   "transaction_item"
    t.integer  "dead_person_id"
    t.string   "status"
    t.date     "date_payment"
    t.string   "payment_method"
    t.string   "description"
    t.integer  "sequence"
    t.string   "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "financials", ["dead_person_id"], name: "index_financials_on_dead_person_id", using: :btree

  create_table "policies", force: true do |t|
    t.string   "number_policy"
    t.integer  "face_value"
    t.integer  "dead_person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "policies", ["dead_person_id"], name: "index_policies_on_dead_person_id", using: :btree

<<<<<<< HEAD
  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
=======
  create_table "policy_valuations", force: true do |t|
    t.integer  "amount"
    t.date     "date_assign"
    t.integer  "policy_id"
    t.integer  "dead_person_id"
>>>>>>> upstream/master
    t.datetime "created_at"
    t.datetime "updated_at"
  end

<<<<<<< HEAD
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
=======
  add_index "policy_valuations", ["dead_person_id"], name: "index_policy_valuations_on_dead_person_id", using: :btree
  add_index "policy_valuations", ["policy_id"], name: "index_policy_valuations_on_policy_id", using: :btree
>>>>>>> upstream/master

end
