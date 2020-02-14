class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :act_sat_score
      t.integer :parent_income
      t.string :state
      t.string :string
      t.text :interests
      t.string :race
      t.integer :age

      t.timestamps
    end
    add_index :users, :email
  end
end
