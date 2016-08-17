class ProjectsController < ApplicationController
	before_action :authenticate_user!
	load_and_authorize_resource
	def index
		@projects=Project.all
		if(params[:status])
			@projects =current_user.projects.where('status = ?',params[:status])
		else
			@projects=current_user.projects
		end
	end
	def create
		@project=Project.new(project_params)
		if @project.save
			redirect_to projects_path
		else
			render action: "new"
		
		end
	end
	private
	def project_params
		params[:project].permit(:name,:description,:start_date,:end_date,:estimated_budget,:client_id)
	end
end
