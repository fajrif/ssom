class ProjectsController < ApplicationController

  def index
		@categories = Category.all
		@pictures = []
		@categories.each_with_index do |category, index|
			@pictures << category.pictures.page(params[:page]).per(6)
		end

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  def show
		@portfolio = Portfolio.where(:slug => params[:id]).try(:first)
  end

end
