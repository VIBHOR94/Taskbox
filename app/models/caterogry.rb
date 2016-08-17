class Caterogry < ActiveRecord::Base
	belongs_to :user
	has_many :project_categories
	has_many :projects ,through: :project_categories

end

