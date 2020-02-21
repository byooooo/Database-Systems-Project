class UpdatedetailedGraduationRateProfileMore < ActiveRecord::Migration[6.0]
  def change
    add_column :detailed_graduation_rate_profiles, :subsidized_stafford_loan_recipients_not_receiving_pell_grants, :integer
    add_column :detailed_graduation_rate_profiles, :did_not_receive_pell_grants_or_subsidized_stafford_loans, :integer
  end
end
