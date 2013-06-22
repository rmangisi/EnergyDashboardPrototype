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

ActiveRecord::Schema.define(version: 20130607215406) do

  create_table "energy_measurements", force: true do |t|
    t.integer  "meter_id"
    t.boolean  "is_estimate"
    t.float    "value"
    t.string   "measurement_unit",      limit: 20
    t.datetime "measurement_timestamp"
  end

  add_index "energy_measurements", ["measurement_timestamp"], name: "energy_measurements_measurement_timestamp_idx"
  add_index "energy_measurements", ["meter_id"], name: "energy_measurements_meter_id_idx"

  create_table "energy_windows", force: true do |t|
    t.integer  "meter_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.float    "energy_consumed"
    t.boolean  "is_fully_populated"
    t.boolean  "is_estimate"
  end

  create_table "locations", force: true do |t|
    t.string "name"
  end

  create_table "meter_statuses", force: true do |t|
    t.string "name"
  end

  create_table "meters", force: true do |t|
    t.integer  "status_id"
    t.integer  "location_id"
    t.string   "serialno"
    t.float    "vtfactor"
    t.float    "ctfactor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
