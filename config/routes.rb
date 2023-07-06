Rails.application.routes.draw do
  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
  get 'base_points/index'
  post 'import_users', to: 'users#import',  as: 'import_users', format: :csv

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
end
