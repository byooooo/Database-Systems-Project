class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.references :person, null: false, foreign_key: true
      t.string :name
      t.string :state

      t.timestamps
    end
  end
end
