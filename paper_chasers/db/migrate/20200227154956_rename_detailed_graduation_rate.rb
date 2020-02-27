class RenameDetailedGraduationRate < ActiveRecord::Migration[6.0]
  def change
    rename_table :detailed_graduation_rate_profiles, :graduation_rate_profiles
  end
end
