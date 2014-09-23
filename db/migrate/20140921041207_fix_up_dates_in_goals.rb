class FixUpDatesInGoals < ActiveRecord::Migration
  def change
      remove_column :goals, :begin_date
      remove_column :goals, :end_date
      add_column :goals, :end_at, :datetime 
      add_column :goals, :complete, :boolean
      add_column :goals, :competed_at, :datetime
  end
end
