class CreateFirstTimeUndergrads < ActiveRecord::Migration[6.0]
  def change
    create_table :first_time_undergrads do |t|
      t.integer :unit_id, foreign_key: true, index: true
      t.references :states
    end
  end
end
