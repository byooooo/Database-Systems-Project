require 'csv'
csv_text = File.read(Rails.root.join('lib', 'seeds', 'InstitutionEntityData.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  institution = Institution.new
  institution.id = row['unitid']
  institution.unitId = row['unitid']
  institution.name = row['name']
  institution.sector_of_institition = row['sector_of_institution']
  institution.institutional_control_or_affiliation = row['institutional_control_or_affiliation']
  institution.institutional_category = row['institutional_category']
  institution.hbcu = row['hbcu']
  institution.state_abbreviation = row['state_abbreviation']
  institution.degree_of_urbanization = row['degree_of_urbanization']
  institution.carnegie_classification_basic = ['carnegie_classification_basic']
  institution.carnegie_classification_undergraduate = row['canegie_classification_undergraduate']
  institution.carnegie_classification_graduate = row['carnegie_classification_graduate']
  institution.nces_data_reporting_category = row['nces_data_reporting_category']
  institution.highest_degree_offered = row['highest_degree_offered']
  institution.percent_admitted = row['percent_admitted']
  institution.percent_admitted_men = row['percent_admitted_men']
  institution.percent_admitted_women = row['percent_admitted_women']
  institution.total_enrollment = row['total_enrollment']
  institution.open_enrollement = row['open_enrollment']
  institution.tes_scores_considered = row['tes_scores_considered']
  institution.percent_submitting_act = row['percent_submitting_act']
  institution.percent_submitting_sat = row['percent_submitting_sat']
  institution.save
end
