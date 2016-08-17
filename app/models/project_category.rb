class ProjectCategory < ActiveRecord::Base
	belongs_to :caterogry
	belongs_to :project
end
