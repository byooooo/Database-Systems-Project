class AddCipcodeToDegreePrograms < ActiveRecord::Migration[6.0]
  def change
    add_column :degree_programs, :cip_code, :bigint
  end
end
