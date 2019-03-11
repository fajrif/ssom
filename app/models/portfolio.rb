class Portfolio < ActiveRecord::Base
	extend FriendlyId

  friendly_id :title, use: :slugged

  # Validations
  validates_presence_of :title
  validates_uniqueness_of :title
  validates_presence_of :description
  validates_presence_of :category_id

	has_many :pictures
	belongs_to :category
end
