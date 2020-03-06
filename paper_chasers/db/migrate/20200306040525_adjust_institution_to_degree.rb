class AdjustInstitutionToDegree < ActiveRecord::Migration[6.0]
  def change
    add_column :institution_to_degrees, :debt_payment, :integer
  end
end
