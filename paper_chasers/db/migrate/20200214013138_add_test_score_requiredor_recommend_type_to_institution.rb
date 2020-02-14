class AddTestScoreRequiredorRecommendTypeToInstitution < ActiveRecord::Migration[6.0]
  def change
    add_column :institutions, :sti_store, :json
  end
end
