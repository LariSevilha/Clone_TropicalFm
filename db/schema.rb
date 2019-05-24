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

ActiveRecord::Schema.define(version: 2019_05_24_132134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "link_categories", force: :cascade do |t|
    t.string "name"
    t.bigint "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_link_categories_on_menu_id"
  end

  create_table "links", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "image"
    t.bigint "link_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["link_category_id"], name: "index_links_on_link_category_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.integer "type_menu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "system_parameters", force: :cascade do |t|
    t.boolean "survey", default: false
    t.boolean "photo_gallery", default: false
    t.boolean "photo_gallery_home", default: false
    t.boolean "video_gallery", default: false
    t.boolean "video_gallery_home", default: false
    t.boolean "nav_menu", default: false
    t.boolean "banner", default: false
    t.boolean "big_slide", default: false
    t.boolean "news", default: false
    t.boolean "last_news", default: false
    t.boolean "featured", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.boolean "admin", default: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "link_categories", "menus"
  add_foreign_key "links", "link_categories"
end
