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

ActiveRecord::Schema.define(version: 20220303130530) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: :cascade do |t|
    t.string   "description"
    t.string   "image"
    t.string   "title"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "albums", force: :cascade do |t|
    t.string   "slug"
    t.string   "image"
    t.string   "name"
    t.boolean  "cover"
    t.string   "description"
    t.string   "publish_date"
    t.boolean  "status",       default: true
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "announcers", force: :cascade do |t|
    t.string   "image"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "banner_ads", force: :cascade do |t|
    t.string   "title"
    t.datetime "start_date"
    t.datetime "finish_date"
    t.string   "url"
    t.string   "file_ad"
    t.boolean  "status",       default: true
    t.integer  "format_ad_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "text"
    t.string   "name"
    t.string   "email"
    t.string   "telefone"
    t.string   "mensage"
    t.string   "topic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "content_builder_archives", force: :cascade do |t|
    t.string   "name"
    t.string   "file"
    t.integer  "content_builder_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["content_builder_id"], name: "index_content_builder_archives_on_content_builder_id", using: :btree
  end

  create_table "content_builder_categories", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "content_builder_count_reads", force: :cascade do |t|
    t.integer  "content_builder_id"
    t.string   "ip"
    t.string   "string"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["content_builder_id"], name: "index_content_builder_count_reads_on_content_builder_id", using: :btree
  end

  create_table "content_builder_images", force: :cascade do |t|
    t.string   "image"
    t.integer  "content_builder_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["content_builder_id"], name: "index_content_builder_images_on_content_builder_id", using: :btree
  end

  create_table "content_builders", force: :cascade do |t|
    t.string   "title"
    t.string   "written_by"
    t.datetime "date_publish"
    t.text     "content"
    t.boolean  "status",                      default: false
    t.string   "slug"
    t.text     "summary"
    t.integer  "content_builder_category_id"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.index ["content_builder_category_id"], name: "index_content_builders_on_content_builder_category_id", using: :btree
  end

  create_table "format_ads", force: :cascade do |t|
    t.string   "title"
    t.integer  "width"
    t.integer  "height"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foto_abouts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

  create_table "photos", force: :cascade do |t|
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programacaos", force: :cascade do |t|
    t.string   "name"
    t.time     "hour"
    t.boolean  "status",     default: true
    t.integer  "day",        default: 0
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "promotions", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.text     "regulation"
    t.datetime "start_date"
    t.datetime "finish_date"
    t.boolean  "status",      default: true
    t.boolean  "form"
    t.string   "slug"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string   "name"
    t.time     "hour"
    t.boolean  "status",     default: true
    t.integer  "day"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "slides", force: :cascade do |t|
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "top_hits", force: :cascade do |t|
    t.string   "link"
    t.integer  "colocation"
    t.boolean  "active",     default: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean  "admin",                  default: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "name"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.datetime "publish_date"
    t.boolean  "status",       default: true
    t.string   "slug"
    t.string   "link"
    t.string   "description"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_foreign_key "content_builder_archives", "content_builders"
  add_foreign_key "content_builder_count_reads", "content_builders"
  add_foreign_key "content_builder_images", "content_builders"
  add_foreign_key "content_builders", "content_builder_categories"
end
