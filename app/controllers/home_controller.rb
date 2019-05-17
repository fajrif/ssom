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

  def explore
		# get public explore
  end

  def clips
		# get public explore
  end

  def games
		# get public explore
  end
end
