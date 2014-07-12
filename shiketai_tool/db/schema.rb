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

ActiveRecord::Schema.define(version: 20140707074256) do

  create_table "blackboards", force: true do |t|
    t.string   "title"
    t.string   "description",                                           null: false
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "material_file_name"
    t.string   "material_content_type"
    t.integer  "material_file_size"
    t.datetime "material_updated_at"
    t.datetime "deadline",              default: '2014-07-06 03:54:42', null: false
  end

  create_table "day_of_a_weeks", force: true do |t|
    t.string   "day_of_a_week", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "periods", force: true do |t|
    t.string   "period",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "semesters", force: true do |t|
    t.string   "semester",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.string   "subject_name",  null: false
    t.string   "teacher",       null: false
    t.string   "day_of_a_week", null: false
    t.string   "period",        null: false
    t.string   "semester",      null: false
    t.text     "description",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
