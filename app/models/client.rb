class Client < ActiveRecord::Base
	has_many :projects
	has_many :tasks

	validates_presence_of :name,:mobile ,:company,:email
end
