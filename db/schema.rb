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

ActiveRecord::Schema.define(version: 20160506031538) do

  create_table "abouts", force: :cascade do |t|
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "caipinclas", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "caipins", force: :cascade do |t|
    t.integer  "caipincla_id",           limit: 4
    t.string   "name",                   limit: 255
    t.string   "summary",                limit: 255
    t.float    "price",                  limit: 24
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "caipinimg_file_name",    limit: 255
    t.string   "caipinimg_content_type", limit: 255
    t.integer  "caipinimg_file_size",    limit: 4
    t.datetime "caipinimg_updated_at"
  end

  create_table "enrolls", force: :cascade do |t|
    t.integer  "promotion_id", limit: 4
    t.string   "name",         limit: 255
    t.string   "tel",          limit: 255
    t.string   "content",      limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "introductions", force: :cascade do |t|
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "promotions", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "content",    limit: 65535
    t.datetime "startdate"
    t.datetime "enddate"
    t.datetime "showdate"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "themeclas", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "themes", force: :cascade do |t|
    t.integer  "themecla_id",           limit: 4
    t.string   "title",                 limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "themeimg_file_name",    limit: 255
    t.string   "themeimg_content_type", limit: 255
    t.integer  "themeimg_file_size",    limit: 4
    t.datetime "themeimg_updated_at"
  end

end
