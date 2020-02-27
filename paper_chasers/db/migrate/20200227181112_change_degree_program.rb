class ChangeDegreeProgram < ActiveRecord::Migration[6.0]
  def change
    execute "ALTER TABLE degree_programs DROP COLUMN id"
    add_column :degree_programs, :program_id, :primary_key
  end
end
