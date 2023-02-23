# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_02_23_091247) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "fiscal_document"
    t.boolean "owner"
    t.integer "type_document"
    t.bigint "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_companies_on_country_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name", null: false
    t.string "locale", null: false
    t.string "acronym"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "location_groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "project_name"
    t.string "phone_number"
    t.string "fiscal_company_number"
    t.string "social_reason"
    t.string "cost_center"
    t.string "acronym"
    t.date "openning_date"
    t.integer "erp_id"
    t.string "email"
    t.integer "system_ticket"
    t.string "acronym_origin"
    t.integer "unified_location_id"
    t.bigint "location_group_id", null: false
    t.bigint "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_locations_on_company_id"
    t.index ["location_group_id"], name: "index_locations_on_location_group_id"
  end

  create_table "menus", force: :cascade do |t|
    t.integer "menu_type"
    t.string "icon"
    t.string "title"
    t.string "page_name"
    t.boolean "secondary", default: true
    t.boolean "ignore"
    t.integer "submenu_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "companies", "countries"
  add_foreign_key "locations", "companies"
  add_foreign_key "locations", "location_groups"
end
