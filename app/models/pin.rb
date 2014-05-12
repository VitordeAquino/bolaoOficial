class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, styles: {medium: "1024x768>"}
	validates_attachment :image, :presence => true,
																content_type: { content_type: ['image/jpeg','image/jpg', 'image/png', 'image/gif']},
																size: { less_than: 5.megabytes}


	validates :descricao, :presence => true
	validates :user_id, :presence => true
end
