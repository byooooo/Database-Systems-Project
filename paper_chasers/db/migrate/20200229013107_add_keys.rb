class AddKeys < ActiveRecord::Migration[6.0]
  def change
    add_column :institution_to_degrees, :institution_id, :bigint
    add_column :institution_to_degrees, :degree_program_id, :bigint
    add_column :comparisons, :degree_program_id, :bigint
    add_column :comparisons, :institution_id, :bigint
    add_column :cost_and_financial_aid_profiles, :institution_id, :bigint
    add_column :student_demographic_profiles, :institution_id, :bigint
    add_column :graduation_rate_profiles, :institution_id, :bigint
    add_foreign_key :institution_to_degrees, :institutions
    add_foreign_key :institution_to_degrees, :degree_programs
    add_foreign_key :cost_and_financial_aid_profiles, :institutions
    add_foreign_key :student_demographic_profiles, :institutions
    add_foreign_key :graduation_rate_profiles, :institutions
    add_foreign_key :comparisons, :degree_programs
    add_foreign_key :comparisons, :institutions
  end
end
