class AddTasktoprojects < ActiveRecord::Migration
  def change
  	add_column :projects ,:task_id ,:integer
  end
end
