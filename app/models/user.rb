class User < ActiveRecord::Base
	has_many :clients
	has_many :projects
	has_many :caterogries
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def is_admin?
	if self.role=="admin"
		return true
	else
		return false
	end
  end
end
