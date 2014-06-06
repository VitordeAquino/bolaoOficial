class Game < ActiveRecord::Base
	belongs_to :user, :order => "id DESC"

end
