class Portfolio < ActiveRecord::Base
	extend FriendlyId

  friendly_id :title, use: :slugged

  # Validations
  validates_presence_of :title
  validates_uniqueness_of :title
  validates_presence_of :description

	default_scope { order(order_no: :desc) }

	has_many :pictures

	def categories_text
		self.pictures.map(&:category).map(&:name).uniq.join(", ")
	end

	def size_text
		"#{self.size} SQM" unless self.size.nil?
	end
end
