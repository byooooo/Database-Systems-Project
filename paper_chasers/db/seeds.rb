# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

school = Institution.find_by_id(2)
puts school.name
CostAndFinancialAidProfile.create(institution_id: school.id, percent_awarded_fin_aid: 50, )


"""
require 'csv'
csv_text = File.read(Rails.root.join('lib', 'seeds', 'InstitutionEntityData.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    Institution.create(
        unitId: row['unitid'],
        name: row['name'],
        sector_of_institition: row['sector_of_institution'],
        institutional_control_or_affiliation: row['institutional_control_or_affiliation'],
        institutional_category: row['institutional_category'],
        hbcu: row['hbcu'],
        state_abbreviation: row['state_abbreviation'],
        degree_of_urbanization: row['degree_of_urbanization'],
        carnegie_classification_basic: row['carnegie_classification_basic'],
        carnegie_classification_undergraduate: row['canegie_classification_undergraduate'],
        carnegie_classification_graduate: row['carnegie_classification_graduate'],
        nces_data_reporting_category: row['nces_data_reporting_category'],
        highest_degree_offered: row['highest_degree_offered'],
        percent_admitted: row['percent_admitted'],
        percent_admitted_men: row['percent_admitted_men'],
        percent_admitted_women: row['percent_admitted_women'],
        total_enrollment: row['total_enrollment'],
        open_enrollement: row['open_enrollment'],
        tes_scores_considered: row['tes_scores_considered'],
        percent_submitting_act: row['percent_submitting_act'],
        percent_submitting_sat: row['percent_submitting_sat'],
    )
end
"""



