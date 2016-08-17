class SandboxController < ApplicationController
  before_action :authenticate_user!
  def clients
	@clients=Client.all
	@client=Client.find(3)
	@byid=Client.find(1,3)
  end
  def projects
  	#@projects=Project.all
  	#@projects=Project.where('client_id=?',15)
  	#@projects=Project.where('start_date > ?',Date.today - 1.month)
  	#@projects=Project.order('start_date')
  	#@projects=Project.order('start_date DESC')
  	#@projects=Project.order('start_date DESC').limit(5)
  	@projects=Project.order('name')
  end
  def allprojects
  	@projects=Project.all	
  end
  def status
  	@completed=Task.where('tasks.is_completed= ?',true)
  	@incompleted=Task.where('tasks.is_completed= ? OR tasks.due_date >=?',false,Date.today)
  	@over=Task.where('tasks.is_completed= ? AND tasks.due_date< ?',false,Date.today)
    @id=params[:id]
    @page=params[:page].to_i + 2
  end
  def job_results
      location=params[:location]
      technology=params[:technology]
      response =HTTParty.get("http://api.indeed.com/ads/apisearch?publisher=7277146494571922&q=#{technology}&co=india&l=#{location}&format=json&v=2")
      @job_results=response.parsed_response
  end
end
