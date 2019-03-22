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
	resources :projects, :only => [:index, :show]

	match 'about', to: 'home#about', via: :get
  root :to => "home#index"

end
