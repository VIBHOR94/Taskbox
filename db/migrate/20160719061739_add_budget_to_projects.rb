class AddBudgetToProjects < ActiveRecord::Migration
  def change
  	#add_cloumn :tablename ,:column_name,column_type
  	add_column :projects ,:column, :integer
  end
end
