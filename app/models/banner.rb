class Banner < ActiveRecord::Base

	mount_uploader :image, ImageUploader

  # Validations
  validates_presence_of :title
  validates_presence_of :image

end
