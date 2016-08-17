class Task < ActiveRecord::Base
	belongs_to :project
	belongs_to :user
	belongs_to :client
	validates_presence_of :title ,:due_date,:project_id
	validate :booleancheck
	validate :enddate

	private
	def enddate
		if Project.find(self.project_id).end_date < due_date
			errors.add(:due_date,"Project end date must be greater than due date")
		end
	end
	def booleancheck
		if !([true,false].include? self.is_completed) 
			errors.add(:is_completed,"Sould be boolean")
		end
	end
end
