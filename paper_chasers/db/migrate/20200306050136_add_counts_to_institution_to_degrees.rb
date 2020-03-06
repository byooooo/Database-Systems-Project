class AddCountsToInstitutionToDegrees < ActiveRecord::Migration[6.0]
  def change
    add_column :institution_to_degrees, :debtCount, :integer 
    add_column :institution_to_degrees, :earningsCount, :integer  
  end
end
