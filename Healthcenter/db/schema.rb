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

ActiveRecord::Schema.define(version: 20131228222849) do

  create_table "activities", force: :cascade do |t|
    t.text     "description"
    t.boolean  "is_done",         default: false
    t.text     "medical_summary"
    t.text     "family_summary"
    t.string   "activity_type"
    t.date     "deadline"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "plan_id"
  end

  add_index "activities", ["plan_id"], name: "index_activities_on_plan_id"
  add_index "activities", ["user_id"], name: "index_activities_on_user_id"

  create_table "family_groups", force: :cascade do |t|
    t.string   "family_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "family_groups_patients", id: false, force: :cascade do |t|
    t.integer "family_group_id"
    t.integer "patient_id"
  end

  add_index "family_groups_patients", ["family_group_id", "patient_id"], name: "index_family_groups_patients_on_family_group_id_and_patient_id", unique: true

  create_table "patients", force: :cascade do |t|
    t.string   "firstname",           limit: 100, null: false
    t.string   "secondname",          limit: 100, null: false
    t.string   "father_lastname",     limit: 100, null: false
    t.string   "mother_lastname",     limit: 100, null: false
    t.date     "born_date",                       null: false
    t.string   "sex",                             null: false
    t.text     "home_adress",         limit: 200, null: false
    t.integer  "phone_number"
    t.integer  "contact_number"
    t.string   "genogram_url"
    t.string   "record_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "plans", force: :cascade do |t|
    t.text     "family_objective"
    t.text     "clinical_objective"
    t.string   "risk_factor"
    t.string   "state"
    t.string   "plan_type"
    t.text     "close_reason"
    t.datetime "close_datetime"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "family_group_id"
  end

  add_index "plans", ["family_group_id"], name: "index_plans_on_family_group_id"
  add_index "plans", ["user_id"], name: "index_plans_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "secondname"
    t.string   "father_lastname"
    t.string   "mother_lastname"
    t.integer  "phone_number"
    t.string   "speciality"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "is_admin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
