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

ActiveRecord::Schema.define(version: 2020_02_29_013107) do

  create_table "comparisons", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "supplied_name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "degree_program_id"
    t.bigint "institution_id"
    t.index ["degree_program_id"], name: "fk_rails_5218446a90"
    t.index ["institution_id"], name: "fk_rails_a27d3c02c3"
    t.index ["user_id"], name: "index_comparisons_on_user_id"
  end

  create_table "cost_and_financial_aid_profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "percent_awarded_fin_aid"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "percent_awarded_fed_state_local_grant"
    t.integer "average_amount_fed_state_local_grant"
    t.integer "percent_awarded_student_loans"
    t.integer "average_student_load_amount"
    t.integer "percent_awarded_federal_loans"
    t.integer "average_federal_loan_amount"
    t.json "sti_store"
    t.bigint "institution_id"
    t.index ["institution_id"], name: "fk_rails_4aaa32a97e"
  end

  create_table "degree_programs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "description"
    t.string "credit_level"
  end

  create_table "favorites", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "favorable_id"
    t.string "favorable_type"
    t.index ["favorable_id"], name: "index_favorites_on_favorable_id"
    t.index ["user_id", "favorable_id", "favorable_type"], name: "index_favorites_on_user_id_and_favorable_id_and_favorable_type", unique: true
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "first_time_undergrads", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "graduation_rate_profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "grad_rate_total_cohort"
    t.integer "pell_grant_recipients_grad_rate_in_150_percent_normal_time"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "grad_rate_men"
    t.string "grad_rate_women"
    t.integer "subsidized_stafford_loan_recipients_not_receiving_pell_grants"
    t.integer "did_not_receive_pell_grants_or_subsidized_stafford_loans"
    t.bigint "institution_id"
    t.index ["institution_id"], name: "fk_rails_06cce6cb18"
  end

  create_table "institution_to_degrees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.decimal "med_debt", precision: 10
    t.decimal "mean_debt", precision: 10
    t.decimal "median_wage", precision: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "institution_id"
    t.bigint "degree_program_id"
    t.index ["degree_program_id"], name: "fk_rails_1d37563ee6"
    t.index ["institution_id"], name: "fk_rails_50f161f861"
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
    t.string "name"
  end

  create_table "states", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "student_demographic_profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "undergrad_total"
    t.integer "undergrad_men"
    t.integer "undergrad_women"
    t.integer "american_indian_total_undergrad"
    t.integer "asian_total_undergrad"
    t.integer "black_or_african_american_total_undergrad"
    t.integer "hispanic_total_undergrad"
    t.integer "native_hawaiian_pacific_islander_total_undergrad"
    t.integer "white_undergrad"
    t.integer "graduate_student_total"
    t.integer "graduate_student_men"
    t.integer "graduate_student_woman"
    t.integer "american_indian_total_grad"
    t.integer "asian_total_grad"
    t.integer "black_or_african_american_total_grad"
    t.integer "hispanic_total_grad"
    t.integer "native_hawaiian_pacific_islander_total_grad"
    t.integer "white_grad"
    t.integer "total_undergrad_under_25"
    t.integer "total_undergrad_over_25"
    t.integer "total_grad_under_25"
    t.integer "total_grad_over_25"
    t.integer "first_time_undergrad_us"
    t.integer "first_time_undergrad_foreign"
    t.bigint "institution_id"
    t.index ["institution_id"], name: "fk_rails_467f2f0982"
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

  add_foreign_key "comparisons", "degree_programs"
  add_foreign_key "comparisons", "institutions"
  add_foreign_key "comparisons", "users"
  add_foreign_key "cost_and_financial_aid_profiles", "institutions"
  add_foreign_key "graduation_rate_profiles", "institutions"
  add_foreign_key "institution_to_degrees", "degree_programs"
  add_foreign_key "institution_to_degrees", "institutions"
  add_foreign_key "student_demographic_profiles", "institutions"
end
