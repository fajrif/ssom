module DeviseControllerMacros

  mattr_accessor :admin

  def login_admin
    @request.env["devise.mapping"] = Devise.mappings[:admin]
    @admin = Fabricate(:admin)
    sign_in @admin
  end

end
