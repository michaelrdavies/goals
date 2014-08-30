class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :text
      t.integer :value
      t.integer :effort
      t.integer :days
      t.date :begin_date
      t.date :end_date

      t.timestamps
    end
  end
end
