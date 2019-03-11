class Admins::AdminsController < Admins::BaseController

  def index
    criteria = Admin.where("email LIKE ?", "%#{params[:search]}%")
    @admins = criteria.page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(params_admin)
    if @admin.save
      redirect_to admins_admin_path(@admin), :notice => "Successfully created admin."
    else
      render :new
    end
  end

  def edit
    @field = params[:field] if params[:field]
    @admin = Admin.find(params[:id])
  end

  def update
    @field = params[:admin][:field] if params[:admin][:field]
    @admin = Admin.find(params[:id])
    if @admin.update_attributes(params_admin)
      flash[:notice] = "Successfully updated admin."
      path = admins_admin_path(@admin)
      respond_to do |format|
        format.html { redirect_to path }
        format.js { render :js => "window.location = '#{path}'" }
      end
    else
      render :edit
    end
  end

  def destroy
    @admin = Admin.find(params[:id])
    @admin.destroy
    redirect_to admins_admins_url, :notice => "Successfully destroyed admin."
  end

  private

  def params_admin
    params.require(:admin).permit(:username, :email, :password)
  end

end
