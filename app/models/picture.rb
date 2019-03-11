class Picture < ActiveRecord::Base
	extend FriendlyId

  friendly_id :title, use: :slugged

	mount_uploader :image, ImageUploader

  # Validations
  validates_presence_of :title
  validates_uniqueness_of :title
  validates_presence_of :image
  validates_presence_of :portfolio_id

	before_save :set_orientation

	belongs_to :portfolio

	def set_orientation
		image = MiniMagick::Image.open(self.image.path)
		if image[:width] == 1200 && image[:height] == 800
			self.orientation = "grid"
    elsif image[:height] > image[:width]
			self.orientation = "portrait"
		else
			self.orientation = "landscape"
    end
	end
end
