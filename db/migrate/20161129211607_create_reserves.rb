class CreateReserves < ActiveRecord::Migration
  def change
    create_table :reserves do |t|
      t.references :laboratory, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :begin_at_id
      t.integer :end_at_id
      t.date :day

      t.timestamps null: false
    end
    add_index :reserves, :begin_at_id
    add_index :reserves, :end_at_id
  end
end
