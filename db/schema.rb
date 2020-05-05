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

ActiveRecord::Schema.define(version: 2020_03_26_221229) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "unaccent"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "calculators", force: :cascade do |t|
    t.string "frontend_class"
    t.integer "points"
    t.date "starts_on"
    t.date "ends_on"
    t.string "score_type"
    t.bigint "kpi_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "objective", default: {"numeric"=>nil, "percentage"=>nil}
    t.integer "index"
    t.integer "position"
    t.integer "total_columns", default: 2
    t.index ["kpi_id"], name: "index_calculators_on_kpi_id"
  end

  create_table "cpo_appraisals", force: :cascade do |t|
    t.bigint "cpo_id"
    t.integer "hyundai"
    t.integer "others"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cpo_id"], name: "index_cpo_appraisals_on_cpo_id", unique: true
  end

  create_table "cpo_sales", force: :cascade do |t|
    t.bigint "cpo_id"
    t.integer "promise"
    t.integer "preowned"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cpo_id"], name: "index_cpo_sales_on_cpo_id", unique: true
  end

  create_table "cpo_takes", force: :cascade do |t|
    t.bigint "cpo_id"
    t.integer "hyundai"
    t.integer "others"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cpo_id"], name: "index_cpo_takes_on_cpo_id", unique: true
  end

  create_table "cpos", force: :cascade do |t|
    t.bigint "dealer_id"
    t.date "period"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dealer_id"], name: "index_cpos_on_dealer_id"
  end

  create_table "dealers", force: :cascade do |t|
    t.string "code"
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "address"
    t.string "manager"
    t.date "opening_date"
    t.string "group"
    t.bigint "zone_id"
    t.string "city"
    t.string "state"
    t.date "deadline"
    t.bigint "postsales_dm_id"
    t.bigint "group_id"
    t.index ["group_id"], name: "index_dealers_on_group_id"
    t.index ["postsales_dm_id"], name: "index_dealers_on_postsales_dm_id"
    t.index ["zone_id"], name: "index_dealers_on_zone_id"
  end

  create_table "dealers_kpis", force: :cascade do |t|
    t.jsonb "score", default: {"numeric"=>nil, "percentage"=>nil}
    t.float "points"
    t.date "period"
    t.bigint "dealer_id"
    t.bigint "calculator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "goal"
    t.integer "percentage"
    t.index ["calculator_id"], name: "index_dealers_kpis_on_calculator_id"
    t.index ["dealer_id"], name: "index_dealers_kpis_on_dealer_id"
  end

  create_table "dealers_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "dealer_id", null: false
    t.index ["user_id", "dealer_id"], name: "index_dealers_users_on_user_id_and_dealer_id", unique: true
  end

  create_table "forecast_registers", force: :cascade do |t|
    t.bigint "forecast_id"
    t.boolean "status"
    t.integer "score"
    t.integer "day"
    t.integer "last_day_sales"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["forecast_id"], name: "index_forecast_registers_on_forecast_id"
  end

  create_table "forecasts", force: :cascade do |t|
    t.date "period"
    t.integer "goal"
    t.integer "last_month"
    t.integer "last_year"
    t.bigint "dealer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dealer_id"], name: "index_forecasts_on_dealer_id"
  end

  create_table "groups", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kpis", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "postsales_dms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "postsales_dms_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "postsales_dm_id", null: false
    t.index ["user_id", "postsales_dm_id"], name: "index_postsales_dms_users_on_user_id_and_postsales_dm_id", unique: true
  end

  create_table "sales", force: :cascade do |t|
    t.integer "retail"
    t.integer "demo"
    t.integer "fleet"
    t.integer "goal"
    t.date "period"
    t.bigint "dealer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "dealers_kpi_id"
    t.index ["dealer_id"], name: "index_sales_on_dealer_id"
    t.index ["dealers_kpi_id"], name: "index_sales_on_dealers_kpi_id"
  end

  create_table "scorecard_periods", force: :cascade do |t|
    t.date "period"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_zones", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "zone_id", null: false
    t.index ["user_id", "zone_id"], name: "index_users_zones_on_user_id_and_zone_id", unique: true
  end

  create_table "zones", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "calculators", "kpis"
  add_foreign_key "cpo_appraisals", "cpos"
  add_foreign_key "cpo_sales", "cpos"
  add_foreign_key "cpo_takes", "cpos"
  add_foreign_key "cpos", "dealers"
  add_foreign_key "dealers", "groups"
  add_foreign_key "dealers", "postsales_dms"
  add_foreign_key "dealers", "zones"
  add_foreign_key "dealers_kpis", "calculators"
  add_foreign_key "dealers_kpis", "dealers"
  add_foreign_key "forecast_registers", "forecasts"
  add_foreign_key "forecasts", "dealers"
  add_foreign_key "sales", "dealers"
  add_foreign_key "sales", "dealers_kpis"
end
