class CreateFirstTimeUndergrads < ActiveRecord::Migration[6.0]
  def change
    create_table :first_time_undergrads do |t|

      t.timestamps
    end
  end
end
