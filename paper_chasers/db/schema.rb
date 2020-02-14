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

ActiveRecord::Schema.define(version: 2020_02_14_022726) do

  create_table "cost_and_financial_aid_profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "institution_id", null: false
    t.integer "percent_awarded_fin_aid"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["institution_id"], name: "index_cost_and_financial_aid_profiles_on_institution_id"
  end

  create_table "degree_programs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "generic_name"
    t.integer "median_debt"
    t.integer "median_salary"
    t.integer "enrolled"
    t.integer "length"
    t.string "type"
    t.bigint "institution_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["institution_id"], name: "index_degree_programs_on_institution_id"
  end

  create_table "detailed_graduation_rate_profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "institution_id", null: false
    t.integer "total_grad_rate"
    t.integer "pell_grant_and_subsidized_loans_grad_rate"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["institution_id"], name: "index_detailed_graduation_rate_profiles_on_institution_id"
  end

  create_table "favorites", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "favorable_id"
    t.string "favorable_type"
    t.index ["favorable_id"], name: "index_favorites_on_favorable_id"
    t.index ["user_id", "favorable_id", "favorable_type"], name: "index_favorites_on_user_id_and_favorable_id_and_favorable_type", unique: true
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "institutions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "state_abbreviation"
    t.string "total_enrollment"
    t.string "sector_of_institition"
    t.string "institutional_control_or_affiliation"
    t.string "institutional_category"
    t.string "hbcu"
    t.string "degree_of_urbanization"
    t.integer "institution_size_category"
    t.string "open_enrollement"
    t.string "tes_scores_considered"
    t.string "highest_degree_offered"
    t.string "carnegie_classification_basic"
    t.string "carnegie_classification_undergraduate"
    t.string "carnegie_classification_graduate"
    t.string "nces_data_reporting_category"
    t.integer "percent_admitted"
    t.integer "percent_admitted_men"
    t.integer "percent_admitted_women"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.json "sti_store"
  end

  create_table "student_demographic_profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "institution_id", null: false
    t.integer "student_by_age"
    t.integer "student_by_race"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["institution_id"], name: "index_student_demographic_profiles_on_institution_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "user_id"
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "act_sat_score"
    t.integer "parent_income"
    t.string "state"
    t.string "string"
    t.text "interests"
    t.string "race"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email"
  end

  add_foreign_key "cost_and_financial_aid_profiles", "institutions"
  add_foreign_key "degree_programs", "institutions"
  add_foreign_key "detailed_graduation_rate_profiles", "institutions"
  add_foreign_key "student_demographic_profiles", "institutions"
end
