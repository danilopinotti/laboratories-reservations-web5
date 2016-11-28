class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.time :begin_at
      t.time :end_at

      t.timestamps null: false
    end
  end
end
