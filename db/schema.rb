# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_18_185133) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.integer "meter_number"
    t.string "name"
    t.integer "phone_number"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meter_number"], name: "index_customers_on_meter_number", unique: true
  end

  create_table "customers_meter_readers", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "meter_reader_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_customers_meter_readers_on_customer_id"
    t.index ["meter_reader_id"], name: "index_customers_meter_readers_on_meter_reader_id"
  end

  create_table "meter_readers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["email"], name: "index_meter_readers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_meter_readers_on_reset_password_token", unique: true
  end

  create_table "readings", force: :cascade do |t|
    t.integer "meter_unit"
    t.bigint "customer_id", null: false
    t.boolean "verified", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_readings_on_customer_id"
    t.index ["meter_unit", "customer_id"], name: "index_readings_on_meter_unit_and_customer_id", unique: true
  end

  add_foreign_key "customers_meter_readers", "customers"
  add_foreign_key "customers_meter_readers", "meter_readers"
  add_foreign_key "readings", "customers"
end
