class RenameCompletedAtInGoals < ActiveRecord::Migration
  def change
    rename_column :goals, :competed_at, :completed_at
  end
end
