class HomeController < ApplicationController

  def index
		# get public home
		@contact = Contact.new
		@banners = Banner.all
		@pictures = Picture.order("order_no asc").limit(8)
  end

  def about
		# get public about
  end

end
