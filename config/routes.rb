Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  # => devise routes
  devise_for :admin, :controllers => { :sessions => "admins/sessions" }

  # => Admin routes
  namespace :admins do
    root :to => 'dashboard#index'
    resources :admins
    resources :banners
    resources :categories
    resources :portfolios
    resources :pictures
    resources :blogs
		resources :contacts, :only => [:index, :show, :destroy]
  end

	resources :blogs, :only => [:index, :show]
	resources :portfolios, :only => [:index, :show]
  resource :contact, :only => [:show, :create]

	match 'about', to: 'home#about', via: :get
  root :to => "home#index"

end
