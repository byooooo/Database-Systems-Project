class ChangeInstitution < ActiveRecord::Migration[6.0]
  def change
    execute "ALTER TABLE institutions DROP COLUMN id"
    add_column :institutions, :unit_id, :primary_key
  end
end
