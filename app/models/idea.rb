class Idea < ActiveRecord::Base
	mount_uploader :picture, PicsUploader
	validates :name,:description,:picture, presence: true
	VALID_PICTURE_FORMAT= /\.(?:jpg|gif|png)/i
	validates :picture, format: {with: VALID_PICTURE_FORMAT}
end