class TasksController < ApplicationController
	before_action :authenticate_user!
	load_and_authorize_resource
	def create 
		@task=Task.new(task_params)
		if @task.save
			redirect_to project_path(@task) ,notice: "Successfully Created."
		end
	end
	def mark_as_complete
		task=Task.find(params[:task_id])
		task.update_attributes(is_completed: true)
		redirect_to :back,notice: "Successfully completed the task."
	end
	def mark_as_incomplete
		task=Task.find(params[:task_id])
		task.update_attributes(is_completed: false)
		redirect_to :back,notice: "Successfully incompleted the task."
	end
	private
	def task_params
		params[:task].permit(:title,:due_date,:project_id,:is_completed)
	end
end
