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

ActiveRecord::Schema.define(version: 20140328201732) do

  create_table "planets", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "macaddress"
    t.string   "type"
    t.integer  "population"
    t.boolean  "colonized"
    t.integer  "energycell"
    t.integer  "food"
    t.integer  "iron_ore"
    t.integer  "steel"
    t.integer  "silicon"
    t.integer  "solarpowerplant"
    t.integer  "metalmine"
    t.integer  "siliconmine"
    t.integer  "habitat"
    t.integer  "farm"
    t.integer  "ironwork"
    t.integer  "storage"
    t.integer  "research_institute"
    t.datetime "created_at"
    t.datetime "colonized_at"
    t.datetime "updated_at"
  end

  add_index "planets", ["macaddress"], name: "index_planets_on_macaddress", unique: true
  add_index "planets", ["user_id"], name: "index_planets_on_user_id"

  create_table "ships", force: true do |t|
    t.integer  "user_id"
    t.integer  "shiptype_id"
    t.string   "name"
    t.integer  "hp"
    t.string   "macaddress"
    t.integer  "storage"
    t.integer  "iron_ore"
    t.integer  "steel"
    t.integer  "silicon"
    t.integer  "food"
    t.integer  "energycell"
    t.integer  "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ships", ["macaddress"], name: "index_ships_on_macaddress", unique: true
  add_index "ships", ["shiptype_id"], name: "index_ships_on_shiptype_id"
  add_index "ships", ["user_id"], name: "index_ships_on_user_id"

  create_table "shiptypes", force: true do |t|
    t.string   "name"
    t.integer  "maxhp"
    t.integer  "capacity"
  end

  create_table "users", force: true do |t|
    t.string   "loginname"
    t.string   "name"
    t.boolean  "password"
    t.string   "email"
    t.boolean  "active"
    t.boolean  "blocked"
    t.boolean  "verified"
    t.integer  "credit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
