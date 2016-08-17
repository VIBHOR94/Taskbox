class SayController < ApplicationController
	before_action :authenticate_user!
	authorize_resource class: false
  def hello
  end

  def goodbye
  end

  def products
	@products=["Hello","hi"]
  end

end
