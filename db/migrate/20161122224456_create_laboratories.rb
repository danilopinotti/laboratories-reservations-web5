class CreateLaboratories < ActiveRecord::Migration
  def change
    create_table :laboratories do |t|
      t.string :name
      t.string :localization

      t.timestamps null: false
    end
  end
end
