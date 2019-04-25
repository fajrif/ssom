class ProjectsController < ApplicationController

  def index
		@projects = Portfolio.all

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  def show
		@portfolio = Portfolio.where(:slug => params[:id]).try(:first)
  end

end
