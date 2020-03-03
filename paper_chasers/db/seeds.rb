# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
"""
require 'csv'
csv_text = File.read(Rails.root.join('lib', 'seeds', 'DemographicEntityData.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    institution = Institution.find_by(unitId: row['UnitId'])
    institution.StudentDemographicProfile.create(
        undergrad_total= row['UndergradTotal'],
        undergrad_men= row['UndergradMen'],
        undergrad_women= row['UndergradWomen'],
        american_indian_total_undergrad= row['AmericanIndianTotalUndergrad'],
        asian_total_undergrad= row['AsianTotalUndergrad'],
        black_or_african_american_total_undergrad= row['BlackOrAfricanAmericanTotalUndergrad'],
        hispanic_total_undergrad= row['HispanicTotalUndergrad'],
        native_hawaiian_pacific_islander_total_undergrad= row['NativeHawaiianPacificIslanderTotalUndergrad'],
        white_undergrad= row['WhiteUndergrad'],
        graduate_student_total= row['GraduateStudentTotal'],
        graduate_student_men= row['GraduateStudentMen'],
        graduate_student_woman= row['GraduateStudentWomen'],
        american_indian_total_grad= row['AmericanIndianTotalGrad'],
        asian_total_grad= row['AsianTotalGrad'],
        black_or_african_american_total_grad= row['BlackOrAfricanAmericanTotalGrad'],
        hispanic_total_grad= row['HispanicTotalGrad'],
        native_hawaiian_pacific_islander_total_grad= row['NativeHawaiianPacificIslanderTotalGrad'],
        white_grad= row['WhiteGrad'],
        first_time_undergrad_us= row['FirstTimeUndergradUS'],
        first_time_undergrad_foreign= row['FirsttimeUndergradForeign'],
        total_undergrad_under_25= row['TotalUndergradUnder25'],
        total_undergrad_over_25= row['TotalUndergradOver25'],
        total_grad_under_25= row['TotalGradUnder25'],
        total_grad_over_25= row['TotatlGradOver25']
    )
end
"""


