class AddNameToInstitution < ActiveRecord::Migration[6.0]
  def change
    add_column :institutions, :name, :string
  end
end
