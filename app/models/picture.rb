class Picture < ActiveRecord::Base

	mount_uploader :image, ImageUploader

  # Validations
  validates_presence_of :image
  validates_presence_of :portfolio_id
  validates_presence_of :category_id

	belongs_to :portfolio
	belongs_to :category

end
