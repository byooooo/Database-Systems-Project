class RevertRelationshipRailsWay < ActiveRecord::Migration[6.0]
  def change
    remove_column :institutions, :unit_id
    remove_column :degree_programs, :program_id
    remove_column :institution_to_degrees, :unit_id
    remove_column :institution_to_degrees, :program_id
    remove_column :comparisons, :program_id
    remove_column :comparisons, :unit_id
    remove_column :cost_and_financial_aid_profiles, :unit_id
    remove_column :student_demographic_profiles, :unit_id
    remove_column :graduation_rate_profiles, :unit_id
    add_column :institutions, :id, :primary_key, first: true
    add_column :degree_programs, :id, :primary_key, first: true
  end
end
