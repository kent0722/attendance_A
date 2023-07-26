Rails.application.routes.draw do

  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
   # ログイン機能
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :base_points
  
  resources :users do
    collection {post :import}
      
    member do 
      get 'attendance_list', to: 'users#attendance_list'
    end
  end
end
