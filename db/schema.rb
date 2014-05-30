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

ActiveRecord::Schema.define(version: 20140530054737) do

  create_table "customs", force: true do |t|
    t.string   "name"
    t.string   "linkMan"
    t.string   "mainMan"
    t.string   "level"
    t.string   "linkTel"
    t.string   "mainTel"
    t.text     "customDesc"
    t.text     "customLove"
    t.string   "operName"
    t.integer  "addr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "identities", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "password"
    t.string   "password_confirmation"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: true do |t|
    t.string   "rName"
    t.text     "rDesc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_sections", force: true do |t|
    t.integer "roid_id"
    t.integer "section_id"
  end

  create_table "sections", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "sort"
    t.integer  "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tree_models", force: true do |t|
    t.string  "text"
    t.boolean "checked"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "qq"
    t.string   "tel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users_roles", force: true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

end
