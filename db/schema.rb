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

ActiveRecord::Schema.define(version: 20150906103542) do

  create_table "assetdetails", force: :cascade do |t|
    t.string   "name"
    t.string   "model"
    t.string   "serial_no"
    t.string   "asset_tag"
    t.string   "monitor_model"
    t.string   "monitor_tag"
    t.string   "mouse"
    t.string   "mouse_tag"
    t.string   "keyboard"
    t.string   "keyboard_tag"
    t.string   "installed_os"
    t.date     "date_of_purchase"
    t.integer  "warranty"
    t.integer  "monitor_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assets", force: :cascade do |t|
    t.string   "name"
    t.string   "model"
    t.string   "serial_no"
    t.string   "asset_tag"
    t.date     "date_of_purchase"
    t.integer  "warranty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assetslists", force: :cascade do |t|
    t.string   "name"
    t.string   "model"
    t.string   "serial_no"
    t.string   "asset_tag"
    t.date     "date_of_purchase"
    t.integer  "warranty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "laptopdetails", force: :cascade do |t|
    t.string   "name"
    t.string   "model"
    t.string   "serial_no"
    t.string   "asset_tag"
    t.string   "monitor_name"
    t.string   "monitor_model"
    t.string   "monitor_tag"
    t.string   "mouse"
    t.string   "mouse_tag"
    t.string   "keyboard"
    t.string   "keyboard_tag"
    t.string   "installed_os"
    t.date     "date_of_purchase"
    t.integer  "warranty"
    t.integer  "monitor_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lists", force: :cascade do |t|
    t.string   "name"
    t.string   "model"
    t.string   "serial_no"
    t.string   "asset_tag"
    t.integer  "warranty"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date_of_purchase"
  end

  create_table "mobiledevices", force: :cascade do |t|
    t.string   "device_name"
    t.string   "model"
    t.string   "serial_no"
    t.string   "asset_tag"
    t.date     "date_of_purchase"
    t.integer  "warranty"
    t.string   "os"
    t.string   "used_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mondetails", force: :cascade do |t|
    t.string   "monitor"
    t.string   "monitor_tag"
    t.string   "monitor_size"
    t.string   "mouse"
    t.string   "mouse_tag"
    t.string   "keyboard"
    t.string   "keyboard_tag"
    t.string   "installed_os"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "monitordetails", force: :cascade do |t|
    t.string   "monitor_model"
    t.string   "monitor_tag"
    t.string   "monitor_size"
    t.string   "mouse"
    t.string   "mouse_tag"
    t.string   "keyboard"
    t.string   "keyboard_tag"
    t.string   "installed_os"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "monitors", force: :cascade do |t|
    t.string   "monitor_model"
    t.string   "monitor_tag"
    t.string   "monitor_size"
    t.string   "mouse"
    t.string   "mouse_tag"
    t.string   "keyboard"
    t.string   "keyboard_tag"
    t.string   "installed_os"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "networkdetails", force: :cascade do |t|
    t.string   "device_name"
    t.string   "model"
    t.string   "serial_no"
    t.string   "asset_tag"
    t.string   "used_for"
    t.string   "port_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "others", force: :cascade do |t|
    t.string   "device_name"
    t.string   "model"
    t.string   "serial_no"
    t.string   "asset_tag"
    t.string   "used_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
  end

  create_table "printerdetails", force: :cascade do |t|
    t.string   "device_name"
    t.string   "model"
    t.string   "serial_no"
    t.string   "asset_tag"
    t.string   "used_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scannerdetails", force: :cascade do |t|
    t.string   "device_name"
    t.string   "model"
    t.string   "serial_no"
    t.string   "asset_tag"
    t.string   "used_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "serverdetails", force: :cascade do |t|
    t.string   "name"
    t.string   "model"
    t.string   "serial_no"
    t.string   "asset_tag"
    t.string   "monitor_model"
    t.string   "monitor_tag"
    t.string   "mouse"
    t.string   "mouse_tag"
    t.string   "keyboard"
    t.string   "keyboard_tag"
    t.string   "installed_os"
    t.date     "date_of_purchase"
    t.integer  "warranty"
    t.integer  "monitor_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tabletdetails", force: :cascade do |t|
    t.string   "device_name"
    t.string   "model"
    t.string   "serial_no"
    t.string   "asset_tag"
    t.date     "date_of_purchase"
    t.integer  "warranty"
    t.string   "os"
    t.string   "used_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
