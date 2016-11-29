class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :bond_number
      t.integer :bond_type
      t.boolean :technical_user
      t.string :password
      t.string :email

      t.timestamps null: false
    end
  end
end
