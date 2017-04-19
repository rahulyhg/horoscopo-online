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

ActiveRecord::Schema.define(version: 20170418130037) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "combinations", force: :cascade do |t|
    t.string   "love_text"
    t.integer  "love_grade"
    t.string   "sex_text"
    t.integer  "sex_grade"
    t.string   "work_text"
    t.integer  "work_grade"
    t.string   "friendship_text"
    t.integer  "friendship_grade"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "daily_horoscopes", force: :cascade do |t|
    t.date     "date"
    t.integer  "sign_id"
    t.string   "day_of_the_week"
    t.string   "text"
    t.string   "color"
    t.string   "numbers"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "dreams", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "lucky_numbers"
    t.string   "animal"
    t.string   "color"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "perfils", force: :cascade do |t|
    t.integer  "sign_id"
    t.string   "love_text"
    t.string   "sex_text"
    t.string   "family_text"
    t.string   "work_text"
    t.string   "friendship_text"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "signs", force: :cascade do |t|
    t.integer  "perfil_id"
    t.integer  "combination_id"
    t.string   "name"
    t.string   "icon_sign_url"
    t.date     "initial_date"
    t.date     "final_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "weekly_horoscopes", force: :cascade do |t|
    t.integer  "sign_id"
    t.date     "initial_date"
    t.date     "final_date"
    t.string   "text"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
