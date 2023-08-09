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
      # 出勤中社員一覧
      get 'attendance_list'
      # 勤怠編集画面
      get 'attendances/edit_one_month'
      patch 'attendances/update_one_month'
      # 勤怠申請モーダルウインドウ
      get 'edit_overtime_requests'
      patch 'update_overtime_requests'
    end
    resources :attendances, only: :update
  end
end
