Rails.application.routes.draw do
match '/admin/movies' => 'movies#create', via: :post
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

    get 'movies/detail' => 'movies#detail',as: :detail_movies
    root 'movies#index'
    resources :movies do
  	resources :comments
  end



end