class ClientsController < ApplicationController
	before_action :authenticate_user!
	load_and_authorize_resource
	def index
		@clients=current_user.is_admin? ? Client.all : current_user.clients
		#@clients=Client.all
	end
	def new
		@client=Client.new
	end
	def show
		begin
			@client=Client.find(params[:id])
		rescue ActiveRecord::RecordNotFound
			redirect_to clients_path,notice: "Record Not Found"
		end
	end
	def create
		@client=Client.new(client_params)
		@client.user_id=current_user.id
		if @client.save
			redirect_to clients_path
		else
			render action: "new"
		end
	end
	private
	def client_params
		params[:client].permit(:name,:company,:mobile,:email)
	end
end
