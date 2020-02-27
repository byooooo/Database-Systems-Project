class ChangeInstitutionToDegrees < ActiveRecord::Migration[6.0]
  def change
    remove_column :institution_to_degrees, :institutions_id
    remove_column :institution_to_degrees, :degree_programs_id
  end
end
