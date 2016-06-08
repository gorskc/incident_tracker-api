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

ActiveRecord::Schema.define(version: 20160605044413) do

  create_table "api_keys", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "access_token"
  end

  create_table "employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "department"
    t.string   "job_title"
    t.date     "date_of_hire"
    t.string   "supervisor_first_name"
    t.string   "supervisor_last_name"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "employees_incidents", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "employee_id"
    t.integer "incident_id"
    t.index ["employee_id"], name: "index_employees_incidents_on_employee_id", using: :btree
    t.index ["incident_id"], name: "index_employees_incidents_on_incident_id", using: :btree
  end

  create_table "incidents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "description",                 limit: 65535
    t.date     "date_of_incident"
    t.date     "date_reported"
    t.text     "location_of_incident",        limit: 65535
    t.string   "type_of_incident"
    t.boolean  "property_damage"
    t.text     "description_of_damage",       limit: 65535
    t.text     "suggested_corrective_action", limit: 65535
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "injuries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "incident_id"
    t.string   "affected_body_part"
    t.string   "type_of_injury"
    t.string   "treatment"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["incident_id"], name: "index_injuries_on_incident_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
  end

end
