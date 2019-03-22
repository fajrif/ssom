class ProjectsController < ApplicationController

  def index
		@categories = Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  def show
		@portfolio = Portfolio.where(:slug => params[:id]).try(:first)
  end

end
