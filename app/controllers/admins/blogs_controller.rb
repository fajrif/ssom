class Admins::BlogsController < Admins::BaseController

  def index
    criteria = Blog.where("title LIKE ?", "%#{params[:search]}%")
    criteria = criteria.order_by([params[:sort], params[:direction]]) unless params[:sort].blank? && params[:direction].blank?

    @blogs = criteria.page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @blogs }
      format.js
    end
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(params_blog)
    if @blog.save
      redirect_to admins_blog_path(@blog), :notice => "Successfully created blog."
    else
      render :action => 'new'
    end
  end

  def show
		@blog = Blog.friendly.find(params[:id])
  end

  def edit
		@blog = Blog.friendly.find(params[:id])
  end

  def update
		@blog = Blog.friendly.find(params[:id])
    if @blog.update_attributes(params_blog)
      redirect_to admins_blog_path(@blog), :notice  => "Successfully updated blog."
    else
      render :action => 'edit'
    end
  end

  def destroy
		@blog = Blog.friendly.find(params[:id])
    @blog.destroy
    redirect_to admins_blogs_url, :notice => "Successfully destroyed blog."
  end

  private

  def params_blog
    params.require(:blog).permit(:title, :image, :description)
  end
end
