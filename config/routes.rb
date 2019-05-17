Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  # => devise routes
  devise_for :admin, :controllers => { :sessions => "admins/sessions" }

  # => Admin routes
  namespace :admins do
    root :to => 'dashboard#index'
    resources :admins
    resources :banners
    resources :portfolios, :path => "projects"
    resources :categories
    resources :pictures
		resources :contacts, :only => [:index, :show, :destroy]
  end

  resource :contact, :only => [:create, :show]
	resources :projects, :only => [:index, :show]

	match 'about', to: 'home#about', via: :get
	match 'theteam', to: 'home#theteam', via: :get
	match 'explore', to: 'home#explore', via: :get
	match 'clips', to: 'home#clips', via: :get
	match 'games', to: 'home#games', via: :get
  root :to => "home#index"

end
