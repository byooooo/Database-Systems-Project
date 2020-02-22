class AddStiCostAndFinancialAidProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :cost_and_financial_aid_profiles, :sti_store, :json
  end
end
