class Game < ActiveRecord::Base
	belongs_to :user

	validates :score1, :score2, presence: true
end
