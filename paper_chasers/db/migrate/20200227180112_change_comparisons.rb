class ChangeComparisons < ActiveRecord::Migration[6.0]
  def change
    remove_column :comparisons, :degree_program_id
    remove_column :comparisons, :institution_id
  end
end
