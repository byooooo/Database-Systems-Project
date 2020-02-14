class CreateInstitutions < ActiveRecord::Migration[6.0]
  def change
    create_table :institutions do |t|
      t.string :state_abbreviation
      t.string :total_enrollment
      t.string :sector_of_institition
      t.string :institutional_control_or_affiliation
      t.string :institutional_category
      t.string :hbcu
      t.string :degree_of_urbanization
      t.integer :institution_size_category
      t.string :open_enrollement
      t.string :tes_scores_considered
      t.string :highest_degree_offered
      t.string :carnegie_classification_basic
      t.string :carnegie_classification_undergraduate
      t.string :carnegie_classification_graduate
      t.string :nces_data_reporting_category
      t.integer :percent_admitted
      t.integer :percent_admitted_men
      t.integer :percent_admitted_women
      t.string :type

      t.timestamps
    end
  end
end
