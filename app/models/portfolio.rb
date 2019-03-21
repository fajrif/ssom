class Portfolio < ActiveRecord::Base
	extend FriendlyId

  friendly_id :title, use: :slugged

  # Validations
  validates_presence_of :title
  validates_uniqueness_of :title
  validates_presence_of :client_name
  validates_presence_of :description

	has_many :pictures
end
