class ProjectsController < ApplicationController

  def index
		@projects = Portfolio.page(params[:page]).per(6)

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  def show
		@portfolio = Portfolio.where(:slug => params[:id]).try(:first)
  end

end
