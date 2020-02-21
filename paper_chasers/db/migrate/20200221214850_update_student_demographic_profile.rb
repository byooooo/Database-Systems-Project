class UpdateStudentDemographicProfile < ActiveRecord::Migration[6.0]
  def change
    remove_column :student_demographic_profiles, :student_by_age
    remove_column :student_demographic_profiles, :student_by_race
    add_column :student_demographic_profiles, :undergrad_total, :integer
    add_column :student_demographic_profiles, :undergrad_men, :integer
    add_column :student_demographic_profiles, :undergrad_women, :integer
    add_column :student_demographic_profiles, :american_indian_total_undergrad, :integer
    add_column :student_demographic_profiles, :asian_total_undergrad, :integer
    add_column :student_demographic_profiles, :black_or_african_american_total_undergrad, :integer
    add_column :student_demographic_profiles, :hispanic_total_undergrad, :integer
    add_column :student_demographic_profiles, :native_hawaiian_pacific_islander_total_undergrad, :integer
    add_column :student_demographic_profiles, :white_undergrad, :integer
    add_column :student_demographic_profiles, :graduate_student_total, :integer
    add_column :student_demographic_profiles, :graduate_student_men, :integer
    add_column :student_demographic_profiles, :graduate_student_woman, :integer
    add_column :student_demographic_profiles, :american_indian_total_grad, :integer
    add_column :student_demographic_profiles, :asian_total_grad, :integer
    add_column :student_demographic_profiles, :black_or_african_american_total_grad,:integer
    add_column :student_demographic_profiles, :hispanic_total_grad, :integer
    add_column :student_demographic_profiles, :native_hawaiian_pacific_islander_total_grad, :integer
    add_column :student_demographic_profiles, :white_grad, :integer
    add_column :student_demographic_profiles, :total_undergrad_under_25, :integer
    add_column :student_demographic_profiles, :total_undergrad_over_25, :integer
    add_column :student_demographic_profiles, :total_grad_under_25, :integer
    add_column :student_demographic_profiles, :total_grad_over_25, :integer
    add_column :student_demographic_profiles, :first_time_undergrad_us, :integer
    add_column :student_demographic_profiles, :first_time_undergrad_foreign, :integer
  end
end
