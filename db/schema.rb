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

ActiveRecord::Schema.define(version: 20161129211607) do

  create_table "laboratories", force: :cascade do |t|
    t.string   "name"
    t.string   "localization"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "periods", force: :cascade do |t|
    t.time     "begin_at"
    t.time     "end_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reserves", force: :cascade do |t|
    t.integer  "laboratory_id"
    t.integer  "user_id"
    t.integer  "begin_at_id"
    t.integer  "end_at_id"
    t.date     "day"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "reserves", ["begin_at_id"], name: "index_reserves_on_begin_at_id"
  add_index "reserves", ["end_at_id"], name: "index_reserves_on_end_at_id"
  add_index "reserves", ["laboratory_id"], name: "index_reserves_on_laboratory_id"
  add_index "reserves", ["user_id"], name: "index_reserves_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "bond_number"
    t.integer  "bond_type"
    t.boolean  "technical_user"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
