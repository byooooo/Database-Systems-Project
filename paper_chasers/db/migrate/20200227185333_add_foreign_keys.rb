class AddForeignKeys < ActiveRecord::Migration[6.0]
  def change
    add_column :institution_to_degrees, :unit_id, :integer, index: true
    add_column :institution_to_degrees, :program_id, :integer, index: true
    add_column :student_demographic_profiles, :unit_id, :integer, index: true
    add_column :cost_and_financial_aid_profiles, :unit_id, :integer, index: true
    add_column :graduation_rate_profiles, :unit_id, :integer, index: true
    add_column :comparisons, :unit_id, :integer, index: true
    add_column :comparisons, :program_id, :integer, index: true
  end
end
