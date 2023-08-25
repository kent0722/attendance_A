Rails.application.routes.draw do
  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
  # ログイン機能
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :base_points
  
  resources :users do
    collection { post :import }
      
    member do 
      get 'attendance_list'
      get 'attendances/edit_one_month'
      patch 'attendances/update_one_month'
      get 'attendances/edit_overtime_requests'
      patch 'attendances/update_overtime_requests'
    end
    
    resources :attendances, only: :update

    # ユーザーに関連する承認申請ルート
    resources :approval_requests, only: [:new, :create, :show] do
      member do
        post 'approve'
      end
    end
  end
end
