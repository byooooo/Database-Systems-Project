class CreateDegreePrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :degree_programs do |t|
      t.string :generic_name
      t.integer :median_debt
      t.integer :median_salary
      t.integer :enrolled
      t.integer :length
      t.string :type
      t.references :institution, null: false, foreign_key: true

      t.timestamps
    end
  end
end
