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

ActiveRecord::Schema.define(version: 20160816014810) do

  create_table "changes", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.string   "chargeCode"
    t.datetime "implementation_date"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "owner_id"
    t.integer  "coordinator_id"
    t.integer  "project_id"
  end

  create_table "logs", force: :cascade do |t|
    t.string  "log_path"
    t.string  "file_name"
    t.string  "mime_type"
    t.integer "step_id"
  end

  create_table "project_members", force: :cascade do |t|
    t.integer "project_id"
    t.integer "staff_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "contact"
  end

  create_table "step_statuses", force: :cascade do |t|
    t.string "name"
    t.string "color"
  end

  create_table "steps", force: :cascade do |t|
    t.integer  "stepNo"
    t.string   "action"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "change_id"
    t.integer  "assignedTo"
  end

end
