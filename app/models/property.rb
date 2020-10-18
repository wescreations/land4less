class Property < ApplicationRecord

	self.per_page = 4

	has_one_attached :main_photo
	has_many_attached :photos
  	#has_attached_file :avatar
  	# Validate the attached image is image/jpg, image/png, etc
  	#validates_attachment_content_type :avatar, :content_type => /image/ 
  	#validates_attachment_content_type :attachment, :content_type => /image/ 
end