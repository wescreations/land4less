class Property < ApplicationRecord

	self.per_page = 8
	
	scope :abc, lambda {order( "name ASC" )}
	scope :xyz, lambda {order( "name DESC" )}
	scope :az, lambda {where(:state => "Arizona" )}
	scope :newest_first, lambda {order( "created_at DESC" )}
	scope :most_expensive, lambda {order( "price DESC" )}
	# scope :for_sale, lambda {where(:for_sale => true)}
	# scope :search, lambda {|query| where(["name like ?", "%#{query}%"])}

  validates_presence_of :name
  validates_presence_of :states
  validates_uniqueness_of :name
	has_one_attached :main_photo
	has_many_attached :photos
  #has_attached_file :avatar
  # Validate the attached image is image/jpg, image/png, etc
  #validates_attachment_content_type :avatar, :content_type => /image/
  #validates_attachment_content_type :attachment, :content_type => /image/
end
