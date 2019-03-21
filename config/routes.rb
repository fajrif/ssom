Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  # => devise routes
  devise_for :admin, :controllers => { :sessions => "admins/sessions" }

  # => Admin routes
  namespace :admins do
    root :to => 'dashboard#index'
    resources :admins
    resources :banners
    resources :portfolios
		resources :contacts, :only => [:index, :show, :destroy]
  end

  resource :contact, :only => [:create]

	match 'projects', to: 'home#projects', via: :get
	match 'about', to: 'home#about', via: :get
  root :to => "home#index"

end
