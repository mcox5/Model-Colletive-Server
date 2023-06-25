# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_25_213225) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "casting_states", force: :cascade do |t|
    t.string "status_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.string "contract_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_model_castings", force: :cascade do |t|
    t.bigint "casting_state_id", null: false
    t.bigint "model_id", null: false
    t.bigint "jobs_offer_id", null: false
    t.float "negociated_remuneration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["casting_state_id"], name: "index_job_model_castings_on_casting_state_id"
    t.index ["jobs_offer_id"], name: "index_job_model_castings_on_jobs_offer_id"
    t.index ["model_id"], name: "index_job_model_castings_on_model_id"
  end

  create_table "job_model_works", force: :cascade do |t|
    t.bigint "contract_id", null: false
    t.bigint "job_model_casting_id", null: false
    t.bigint "work_state_id", null: false
    t.date "work_date"
    t.integer "model_rate"
    t.integer "company_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_job_model_works_on_contract_id"
    t.index ["job_model_casting_id"], name: "index_job_model_works_on_job_model_casting_id"
    t.index ["work_state_id"], name: "index_job_model_works_on_work_state_id"
  end

  create_table "jobs_offers", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "name"
    t.string "location"
    t.float "remuneration"
    t.date "limit_date"
    t.integer "duration"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "jobs_offers_state_id", null: false
    t.index ["company_id"], name: "index_jobs_offers_on_company_id"
    t.index ["jobs_offers_state_id"], name: "index_jobs_offers_on_jobs_offers_state_id"
  end

  create_table "jobs_offers_states", force: :cascade do |t|
    t.string "status_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "phone_number"
    t.string "location"
    t.integer "rating"
    t.string "eye_color"
    t.float "weight"
    t.float "height"
    t.float "hips"
    t.float "bust"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_models_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
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
    t.bigint "role_id", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  create_table "work_states", force: :cascade do |t|
    t.string "work_state_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "companies", "users"
  add_foreign_key "job_model_castings", "casting_states"
  add_foreign_key "job_model_castings", "jobs_offers"
  add_foreign_key "job_model_castings", "models"
  add_foreign_key "job_model_works", "contracts"
  add_foreign_key "job_model_works", "job_model_castings"
  add_foreign_key "job_model_works", "work_states"
  add_foreign_key "jobs_offers", "companies"
  add_foreign_key "jobs_offers", "jobs_offers_states"
  add_foreign_key "models", "users"
  add_foreign_key "users", "roles"
end
