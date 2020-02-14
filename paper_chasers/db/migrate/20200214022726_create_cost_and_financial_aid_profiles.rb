class CreateCostAndFinancialAidProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :cost_and_financial_aid_profiles do |t|
      t.references :institution, null: false, foreign_key: true
      t.integer :percent_awarded_fin_aid
      t.string :type

      t.timestamps
    end
  end
end
