class Admins::PicturesController < Admins::BaseController

  def index
    criteria = Picture.where("id LIKE ?", "%#{params[:search]}%")
    criteria = criteria.order_by([params[:sort], params[:direction]]) unless params[:sort].blank? && params[:direction].blank?

    @pictures = criteria.page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pictures }
      format.js
    end
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(params_picture)
    if @picture.save
      redirect_to admins_picture_path(@picture), :notice => "Successfully created picture."
    else
      render :action => 'new'
    end
  end

  def show
		@picture = Picture.find(params[:id])
  end

  def edit
		@picture = Picture.find(params[:id])
  end

  def update
		@picture = Picture.find(params[:id])
    if @picture.update_attributes(params_picture)
      redirect_to admins_picture_path(@picture), :notice  => "Successfully updated picture."
    else
      render :action => 'edit'
    end
  end

  def destroy
		@picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to admins_pictures_url, :notice => "Successfully destroyed picture."
  end

  private

  def params_picture
    params.require(:picture).permit(:title, :image, :description, :portfolio_id)
  end
end
