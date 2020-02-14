class CreateDetailedGraduationRateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :detailed_graduation_rate_profiles do |t|
      t.references :institution, null: false, foreign_key: true
      t.integer :total_grad_rate
      t.integer :pell_grant_and_subsidized_loans_grad_rate
      t.string :type

      t.timestamps
    end
  end
end
