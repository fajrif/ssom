class Blog < ActiveRecord::Base
	extend FriendlyId

  friendly_id :title, use: :slugged

	mount_uploader :image, ImageUploader

  # Validations
  validates_presence_of :title
  validates_presence_of :description

end
