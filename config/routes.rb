Rails.application.routes.draw do

  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
   # ログイン機能
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  get 'base_points/index'
  post 'import_users', to: 'users#import',  as: 'import_users', format: :csv

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
end
