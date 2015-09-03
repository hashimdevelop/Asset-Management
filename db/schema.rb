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

ActiveRecord::Schema.define(version: 20150902052251) do

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

end
