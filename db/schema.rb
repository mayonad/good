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

ActiveRecord::Schema.define(version: 20170805103119) do

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "rating"
    t.integer  "room_id"
    t.string   "user_idinteger"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "differents", force: :cascade do |t|
    t.string   "room_name"
    t.text     "description"
    t.string   "picture"
    t.string   "room_type"
    t.integer  "guests"
    t.integer  "bedroom"
    t.integer  "bed"
    t.integer  "price"
    t.string   "houserules"
    t.integer  "availability"
    t.boolean  "wifi"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
