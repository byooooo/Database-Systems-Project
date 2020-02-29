class AddUnitIdIntToInstitutions < ActiveRecord::Migration[6.0]
  def change
    add_column :institutions, :unitId, :int
    change_column :institutions, :unitId, :bigint
  end
end
