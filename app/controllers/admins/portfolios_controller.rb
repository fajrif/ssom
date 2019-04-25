class Admins::PortfoliosController < Admins::BaseController

  def index
    criteria = Portfolio.where("title LIKE ?", "%#{params[:search]}%")
    criteria = criteria.order_by([params[:sort], params[:direction]]) unless params[:sort].blank? && params[:direction].blank?

    @portfolios = criteria.page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @portfolios }
      format.js
    end
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(params_portfolio)
    if @portfolio.save
      redirect_to admins_portfolio_path(@portfolio), :notice => "Successfully created portfolio."
    else
      render :action => 'new'
    end
  end

  def show
		@portfolio = Portfolio.friendly.find(params[:id])
  end

  def edit
		@portfolio = Portfolio.friendly.find(params[:id])
  end

  def update
		@portfolio = Portfolio.friendly.find(params[:id])
    if @portfolio.update_attributes(params_portfolio)
      redirect_to admins_portfolio_path(@portfolio), :notice  => "Successfully updated portfolio."
    else
      render :action => 'edit'
    end
  end

  def destroy
		@portfolio = Portfolio.friendly.find(params[:id])
    @portfolio.destroy
    redirect_to admins_portfolios_url, :notice => "Successfully destroyed portfolio."
  end

  private

  def params_portfolio
    params.require(:portfolio).permit(:title, :client_name, :location, :size, :type_project, :description, :order_no)
  end
end
