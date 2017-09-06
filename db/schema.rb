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

ActiveRecord::Schema.define(version: 20170906023401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.string "city"
    t.string "zipcode"
    t.string "address"
    t.string "apt_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "lat", precision: 10, scale: 6
    t.decimal "lng", precision: 10, scale: 6
    t.string "district"
    t.string "lat_string"
    t.string "lng_string"
  end

  create_table "user_locations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "location_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email"
    t.string "uid", default: ""
    t.string "encrypted_password", default: ""
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "device_unique_id"
    t.string "manufacturer"
    t.string "brand"
    t.string "model"
    t.string "device_id"
    t.string "system_name"
    t.string "system_version"
    t.string "bundle_id"
    t.integer "build_number"
    t.string "version"
    t.string "readable_version"
    t.string "device_name"
    t.string "user_agent"
    t.string "device_locale"
    t.string "device_country"
    t.string "time_zone"
    t.string "instance_id_android"
    t.boolean "is_emulator"
    t.boolean "is_tablet"
    t.string "pin_or_finder"
  end

end
