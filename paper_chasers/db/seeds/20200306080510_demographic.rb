
require 'csv'
csv_text = File.read(Rails.root.join('lib', 'seeds', 'DemographicEntityData.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  institution = Institution.find(row['UnitID'])
  student_demographic_profile = StudentDemographicProfile.new
  student_demographic_profile.institution_id = institution.id
  student_demographic_profile.undergrad_total= row['UndergradTotal']
  student_demographic_profile.undergrad_men= row['UndergradMen']
  student_demographic_profile.undergrad_women= row['UndergradWomen']
  student_demographic_profile.american_indian_total_undergrad= row['AmericanIndianTotalUndergrad']
  student_demographic_profile.asian_total_undergrad= row['AsianTotalUndergrad']
  student_demographic_profile.black_or_african_american_total_undergrad= row['BlackOrAfricanAmericanTotalUndergrad']
  student_demographic_profile.hispanic_total_undergrad= row['HispanicTotalUndergrad']
  student_demographic_profile.native_hawaiian_pacific_islander_total_undergrad= row['NativeHawaiianPacificIslanderTotalUndergrad']
  student_demographic_profile.white_undergrad= row['WhiteUndergrad']
  student_demographic_profile.graduate_student_total= row['GraduateStudentTotal']
  student_demographic_profile.graduate_student_men= row['GraduateStudentMen']
  student_demographic_profile.graduate_student_woman= row['GraduateStudentWomen']
  student_demographic_profile.american_indian_total_grad= row['AmericanIndianTotalGrad']
  student_demographic_profile.asian_total_grad= row['AsianTotalGrad']
  student_demographic_profile.black_or_african_american_total_grad= row['BlackOrAfricanAmericanTotalGrad']
  student_demographic_profile.hispanic_total_grad= row['HispanicTotalGrad']
  student_demographic_profile.native_hawaiian_pacific_islander_total_grad= row['NativeHawaiianPacificIslanderTotalGrad']
  student_demographic_profile.white_grad= row['WhiteGrad']
  student_demographic_profile.first_time_undergrad_us= row['FirstTimeUndergradUS']
  student_demographic_profile.first_time_undergrad_foreign= row['FirsttimeUndergradForeign']
  student_demographic_profile.total_undergrad_under_25= row['TotalUndergradUnder25']
  student_demographic_profile.total_undergrad_over_25= row['TotalUndergradOver25']
  student_demographic_profile.total_grad_under_25= row['TotalGradUnder25']
  student_demographic_profile.total_grad_over_25= row['TotatlGradOver25']
  student_demographic_profile.save
end
