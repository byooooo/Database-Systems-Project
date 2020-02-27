class ChangeInstitutionReferences < ActiveRecord::Migration[6.0]
  def change
    remove_column :student_demographic_profiles, :institution_id
    remove_column :cost_and_financial_aid_profiles, :institution_id
    remove_column :graduation_rate_profiles, :institution_id
  end
end
