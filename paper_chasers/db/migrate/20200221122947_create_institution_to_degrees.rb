class CreateInstitutionToDegrees < ActiveRecord::Migration[6.0]
  def change
    create_table :institution_to_degrees do |t|
      t.decimal :med_debt
      t.decimal :mean_debt
      t.decimal :median_wage
      t.references :institutions
      t.references :degree_programs

      t.timestamps
    end
  end
end
