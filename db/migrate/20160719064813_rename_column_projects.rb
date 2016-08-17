class RenameColumnProjects < ActiveRecord::Migration
  def change
  	add_column :projects ,:budget ,:integer
  	rename_column :projects, :budget, :estimated_budget

  	change_column :projects, :estimated_budget, :float
  end
end
