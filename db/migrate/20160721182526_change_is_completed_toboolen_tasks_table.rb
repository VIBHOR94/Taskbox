class ChangeIsCompletedToboolenTasksTable < ActiveRecord::Migration
  def change
	change_column :tasks, :is_completed, :boolean
  end
end
