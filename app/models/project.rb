class Project < ActiveRecord::Base
	belongs_to :user
	has_many :tasks
	belongs_to :client
	has_many :project_categories
	has_many :caterogries, through: :project_categories
	before_destroy :delete_all_tasks

	private 
	def delete_all_tasks
		Task.where('project_id = ?',self.id).delete_all
	end
end
