class BlogsController < ApplicationController

  def index
		@blogs = Blog.all.reverse

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  def show
		@blog = Blog.where(:slug => params[:id]).try(:first)
  end

end
