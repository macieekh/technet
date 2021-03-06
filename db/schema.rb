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

ActiveRecord::Schema.define(version: 20140702211922) do

  create_table "devices", force: true do |t|
    t.string   "serial"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "model_id"
  end

  add_index "devices", ["model_id"], name: "index_devices_on_model_id"

  create_table "models", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "color"
  end

  create_table "models_parts", id: false, force: true do |t|
    t.integer "part_id",  null: false
    t.integer "model_id", null: false
  end

  create_table "order_ticket_lines", force: true do |t|
    t.integer "order_ticket_id"
    t.integer "part_id"
  end

  create_table "order_tickets", force: true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "device_id"
  end

  add_index "order_tickets", ["device_id"], name: "index_order_tickets_on_device_id"

  create_table "order_tickets_parts", id: false, force: true do |t|
    t.integer "order_ticket_id", null: false
    t.integer "part_id",         null: false
  end

  create_table "parts", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", force: true do |t|
    t.string   "title"
    t.integer  "counter"
    t.text     "issue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "device_id"
  end

  add_index "tickets", ["device_id"], name: "index_tickets_on_device_id"

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
