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
	match 'game', to: 'home#game', via: :get
	match 'find-interest', to: 'home#find_interest', via: :get
	match 'following', to: 'home#following', via: :get
	match 'other-user', to: 'home#user', via: :get

	match 'profile-settings', to: 'home#profile_settings', via: :get
  match 'profile-security', to: 'home#profile_security', via: :get
  match 'profile-notifications', to: 'home#profile_notifications', via: :get
  match 'profile-verification', to: 'home#profile_verification', via: :get
  match 'profile-payment', to: 'home#profile_payment', via: :get
  match 'profile-guide', to: 'home#profile_guide', via: :get
  match 'profile-voting', to: 'home#profile_voting', via: :get

	match 'profile', to: 'home#profile', via: :get
	match 'profile-clips', to: 'home#profile_clips', via: :get
	match 'profile-friends', to: 'home#profile_friends', via: :get
	match 'registered', to: 'home#registered', via: :get
	match 'streaming-tools', to: 'home#streaming_tools', via: :get
	match 'event', to: 'home#event', via: :get
  root :to => "home#index"

end
