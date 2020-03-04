task :seed_demo_data => :environment do
    require 'csv'
    csv_text = File.read(Rails.root.join('lib', 'seeds', 'DemographicEntityData.csv'))
    csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
    csv.each do |row|
        puts "This is the unitID from the CSV #{row['id']}"
        puts "This is the college name #{row['Institution Name']}"
        institution = Institution.find_by(unitId: row['id'])
        puts "This is the institution I found with UnitId #{institution.name}"
        d = StudentDemographicProfile.new
        d.undergrad_total= row['UndergradTotal']
        d.undergrad_men= row['UndergradMen']
        d.undergrad_women= row['UndergradWomen']
        d.american_indian_total_undergrad= row['AmericanIndianTotalUndergrad']
        d.asian_total_undergrad= row['AsianTotalUndergrad']
        d.black_or_african_american_total_undergrad= row['BlackOrAfricanAmericanTotalUndergrad']
        d.hispanic_total_undergrad= row['HispanicTotalUndergrad']
        d.native_hawaiian_pacific_islander_total_undergrad= row['NativeHawaiianPacificIslanderTotalUndergrad']
        d.white_undergrad= row['WhiteUndergrad']
        d.graduate_student_total= row['GraduateStudentTotal']
        d.graduate_student_men= row['GraduateStudentMen']
        d.graduate_student_woman= row['GraduateStudentWomen']
        d.american_indian_total_grad= row['AmericanIndianTotalGrad']
        d.asian_total_grad= row['AsianTotalGrad']
        d.black_or_african_american_total_grad= row['BlackOrAfricanAmericanTotalGrad']
        d.hispanic_total_grad= row['HispanicTotalGrad']
        d.native_hawaiian_pacific_islander_total_grad= row['NativeHawaiianPacificIslanderTotalGrad']
        d.white_grad= row['WhiteGrad']
        d.first_time_undergrad_us= row['FirstTimeUndergradUS']
        d.first_time_undergrad_foreign= row['FirsttimeUndergradForeign']
        d.total_undergrad_under_25= row['TotalUndergradUnder25']
        d.total_undergrad_over_25= row['TotalUndergradOver25']
        d.total_grad_under_25= row['TotalGradUnder25']
        d.total_grad_over_25= row['TotatlGradOver25']
        d.institution_id = institution.id 
        d.save
        institution.student_demographic_profile = d
    end
end