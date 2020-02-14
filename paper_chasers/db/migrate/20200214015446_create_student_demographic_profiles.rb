class CreateStudentDemographicProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :student_demographic_profiles do |t|
      t.references :institution, null: false, foreign_key: true
      t.integer :student_by_age
      t.integer :student_by_race

      t.timestamps
    end
  end
end
