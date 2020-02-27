class ChangeInstitution < ActiveRecord::Migration[6.0]
  def change
    rename_table :detailed_graduation_rate_profiles, :graduation_rate_profiles
    remove_column :institution_to_degrees, :institutions_id
    remove_column :institution_to_degrees, :degree_programs_id
    remove_column :comparisons, :degree_programs_id
    remove_column :comparisons, :institutions_id
    execute "ALTER TABLE degree_programs DROP COLUMN id"
    remove_column :student_demographic_profiles, :institutions_id
    remove_column :cost_and_financial_aid_profiles, :institutions_id
    remove_column :graduation_rate_profiles, :institutions_id
    execute "ALTER TABLE institutions DROP COLUMN id"
    execute "ALTER TABLE degree_programs DROP COLUMN id"

    add_column :institutions, :unit_id, :integer, :primary_key
    add_column :degree_programs, :program_id, :integer, :primary_key

    add_reference :instition_to_degrees, :unit_id, foreign_key: { to_table: :institutions }
    add_reference :instition_to_degrees, :unit_id, foreign_key: { to_tbale: :degree_programs }
    add_reference :student_demographic_profiles, :unit_id, foreign_key: { to_table: :institutions }
    add_reference :cost_and_financial_aid_profiles, :unit_id, foreign_key: { to_table: :institutions }
    add_reference :graduation_rate_profiles, :unit_id, foreign_key: { to_table: :institutions }
  end
end
