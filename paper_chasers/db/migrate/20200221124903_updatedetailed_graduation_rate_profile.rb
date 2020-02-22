class UpdatedetailedGraduationRateProfile < ActiveRecord::Migration[6.0]
  def change
    rename_column :detailed_graduation_rate_profiles, :total_grad_rate, :grad_rate_total_cohort
    add_column :detailed_graduation_rate_profiles, :grad_rate_men, :string
    add_column :detailed_graduation_rate_profiles, :grad_rate_women, :string
    rename_column :detailed_graduation_rate_profiles, :pell_grant_and_subsidized_loans_grad_rate, :pell_grant_recipients_grad_rate_in_150_percent_normal_time
  end
end
