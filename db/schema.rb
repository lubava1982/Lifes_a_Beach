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

ActiveRecord::Schema.define(version: 20161024230239) do

  create_table "addresses", force: true do |t|
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "beaches", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "beaches", ["address_id"], name: "index_beaches_on_address_id"

  create_table "favorites", force: true do |t|
    t.integer  "user_id"
    t.integer  "beach_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favorites", ["beach_id"], name: "index_favorites_on_beach_id"
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id"

  create_table "reviews", force: true do |t|
    t.text     "comment"
    t.float    "rating"
    t.integer  "user_id"
    t.integer  "beach_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["beach_id"], name: "index_reviews_on_beach_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["address_id"], name: "index_users_on_address_id"

end
