Rails.application.routes.draw do
  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
  # ログイン機能
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users do
    collection { post :import }
    member do 
      get 'attendance_list'
      get 'attendances/edit_one_month'
      patch 'attendances/update_one_month'
      get 'attendances/edit_overtime_req'
      patch 'attendances/update_overtime_req'
      get 'attendances/overtime_req_confirm'
      post 'attendances/overtime_req_process'
    end
    resources :attendances, only: :update
  end
   resources :base_points
end
