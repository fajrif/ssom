class HomeController < ApplicationController

  def index
		@contact = Contact.new
		portfolio = Portfolio.first(4) + Portfolio.last(4)
		@pictures = portfolio.map {|p| p.pictures[0] }
		# get public home
  end

  def about
		# get public about
  end

end
