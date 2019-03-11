class Admins::BaseController < ActionController::Base

  protect_from_forgery

  # Devise filter authenticate admin
  before_filter :authenticate_admin!

  layout "admin"

  # include all helpers, all the time
  helper :all

end
