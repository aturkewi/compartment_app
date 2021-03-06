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

ActiveRecord::Schema.define(version: 20160122211602) do

  create_table "addresses", force: :cascade do |t|
    t.string   "street"
    t.integer  "number"
    t.string   "apartment"
    t.string   "state"
    t.string   "city"
    t.integer  "zip"
    t.integer  "floor"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "apartment_id"
  end

  create_table "apartments", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "listing_url"
    t.integer  "bedroom"
    t.integer  "sqr_ft"
    t.string   "water_pressure"
    t.text     "notes"
    t.integer  "price"
    t.integer  "realtor_fee"
    t.integer  "rank"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "bathroom"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
