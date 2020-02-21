class RemoveInstitutionLinkFromDegreeProgram < ActiveRecord::Migration[6.0]
  def change
    remove_column :degree_programs, :institution_id
  end
end
