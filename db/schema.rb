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

ActiveRecord::Schema.define(version: 20130902130251) do

  create_table "admin_match_translations", force: true do |t|
    t.integer  "admin_match_id", null: false
    t.string   "locale",         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "admin_match_translations", ["admin_match_id"], name: "index_admin_match_translations_on_admin_match_id"
  add_index "admin_match_translations", ["locale"], name: "index_admin_match_translations_on_locale"

  create_table "admin_match_video_translations", force: true do |t|
    t.integer  "admin_match_video_id", null: false
    t.string   "locale",               null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "opponent"
  end

  add_index "admin_match_video_translations", ["admin_match_video_id"], name: "index_admin_match_video_translations_on_admin_match_video_id"
  add_index "admin_match_video_translations", ["locale"], name: "index_admin_match_video_translations_on_locale"

  create_table "admin_match_videos", force: true do |t|
    t.integer  "match_id"
    t.integer  "year"
    t.integer  "round"
    t.integer  "part"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_matches", force: true do |t|
    t.integer  "ordinal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_matches", ["ordinal"], name: "index_admin_matches_on_ordinal", unique: true

end
