class UpdateDegreeProgram < ActiveRecord::Migration[6.0]
  def change
    remove_column :degree_programs, :type
    remove_column :degree_programs, :length
    remove_column :degree_programs, :enrolled
    remove_column :degree_programs, :median_salary
    remove_column :degree_programs, :median_debt
    remove_column :degree_programs, :generic_name
    add_column :degree_programs, :description, :string
    add_column :degree_programs, :credit_level, :string

  end
end
