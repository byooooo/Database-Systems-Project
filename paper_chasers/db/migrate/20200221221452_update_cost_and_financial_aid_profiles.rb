class UpdateCostAndFinancialAidProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :cost_and_financial_aid_profiles, :percent_awarded_fed_state_local_grant, :integer
    add_column :cost_and_financial_aid_profiles, :average_amount_fed_state_local_grant, :integer
    add_column :cost_and_financial_aid_profiles, :percent_awarded_student_loans, :integer
    add_column :cost_and_financial_aid_profiles, :average_student_load_amount, :integer
    add_column :cost_and_financial_aid_profiles, :percent_awarded_federal_loans, :integer
    add_column :cost_and_financial_aid_profiles, :average_federal_loan_amount, :integer
  end
end
