class AddPercentTestScoresToInstitutions < ActiveRecord::Migration[6.0]
  def change
    add_column :institutions, :percent_submitting_act, :int
    add_column :institutions, :percent_submitting_sat, :int
  end
end
