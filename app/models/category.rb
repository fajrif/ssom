class Category < ActiveRecord::Base

  # Validations
  validates_presence_of :name

	has_many :portfolios

	def av_name
		self.name == "other" ? "grid" : self.name.downcase
	end
end
