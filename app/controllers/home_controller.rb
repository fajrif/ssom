class HomeController < ApplicationController

  def index
		# get public home
		@contact = Contact.new
		@banners = Banner.all
		@pictures = Picture.order("order_no desc").limit(8).reverse
  end

  def about
		# get public about
  end

  def theteam
		# get public theteam
  end
end
