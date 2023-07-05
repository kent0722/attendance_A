Rails.application.routes.draw do
  get 'base_points/index'

  get 'users/index'

  root 'static_pages#top'
  get '/signup', to: 'users#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
end
