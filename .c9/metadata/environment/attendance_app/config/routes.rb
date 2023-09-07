{"filter":false,"title":"routes.rb","tooltip":"/attendance_app/config/routes.rb","undoManager":{"mark":100,"position":100,"stack":[[{"start":{"row":28,"column":93},"end":{"row":29,"column":6},"action":"remove","lines":["","      "],"id":444}],[{"start":{"row":25,"column":8},"end":{"row":25,"column":17},"action":"remove","lines":["申請フォームの表示"],"id":445},{"start":{"row":25,"column":8},"end":{"row":25,"column":17},"action":"insert","lines":["申請フォームの表示"]},{"start":{"row":25,"column":8},"end":{"row":25,"column":17},"action":"remove","lines":["申請フォームの表示"]},{"start":{"row":25,"column":8},"end":{"row":25,"column":9},"action":"insert","lines":["h"]},{"start":{"row":25,"column":8},"end":{"row":25,"column":9},"action":"remove","lines":["h"]},{"start":{"row":25,"column":8},"end":{"row":25,"column":9},"action":"insert","lines":["ほ"]},{"start":{"row":25,"column":8},"end":{"row":25,"column":9},"action":"remove","lines":["ほ"]},{"start":{"row":25,"column":8},"end":{"row":25,"column":10},"action":"insert","lines":["ほう"]},{"start":{"row":25,"column":8},"end":{"row":25,"column":10},"action":"remove","lines":["ほう"]},{"start":{"row":25,"column":8},"end":{"row":25,"column":9},"action":"insert","lines":["ほ"]}],[{"start":{"row":25,"column":8},"end":{"row":25,"column":9},"action":"remove","lines":["ほ"],"id":446}],[{"start":{"row":25,"column":8},"end":{"row":25,"column":9},"action":"insert","lines":["丈"],"id":447}],[{"start":{"row":25,"column":8},"end":{"row":25,"column":9},"action":"remove","lines":["丈"],"id":448}],[{"start":{"row":25,"column":8},"end":{"row":25,"column":10},"action":"insert","lines":["上長"],"id":449},{"start":{"row":25,"column":10},"end":{"row":25,"column":11},"action":"insert","lines":["へ"]},{"start":{"row":25,"column":11},"end":{"row":25,"column":12},"action":"insert","lines":["の"]}],[{"start":{"row":25,"column":12},"end":{"row":25,"column":13},"action":"insert","lines":["新"],"id":450}],[{"start":{"row":25,"column":12},"end":{"row":25,"column":13},"action":"remove","lines":["新"],"id":451}],[{"start":{"row":25,"column":12},"end":{"row":25,"column":14},"action":"insert","lines":["申請"],"id":452}],[{"start":{"row":27,"column":0},"end":{"row":27,"column":13},"action":"remove","lines":["      # 申請の作成"],"id":453},{"start":{"row":26,"column":90},"end":{"row":27,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":28,"column":0},"end":{"row":28,"column":12},"action":"remove","lines":["      # 承認操作"],"id":454},{"start":{"row":27,"column":93},"end":{"row":28,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":20,"column":42},"end":{"row":21,"column":0},"action":"insert","lines":["",""],"id":455},{"start":{"row":21,"column":0},"end":{"row":21,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":17,"column":27},"end":{"row":18,"column":0},"action":"insert","lines":["",""],"id":456},{"start":{"row":18,"column":0},"end":{"row":18,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":30,"column":43},"end":{"row":30,"column":108},"action":"remove","lines":[", to: 'approval_requests#approve', as: 'approve_approval_request'"],"id":457}],[{"start":{"row":29,"column":30},"end":{"row":29,"column":93},"action":"remove","lines":[", to: 'approval_requests#create', as: 'create_approval_request'"],"id":458}],[{"start":{"row":28,"column":33},"end":{"row":28,"column":90},"action":"remove","lines":[", to: 'approval_requests#new', as: 'new_approval_request'"],"id":459}],[{"start":{"row":28,"column":6},"end":{"row":30,"column":43},"action":"remove","lines":["get 'approval_requests/new'","      post 'approval_requests'","      patch 'approval_requests/:id/approve'"],"id":460},{"start":{"row":28,"column":6},"end":{"row":31,"column":0},"action":"insert","lines":["      get 'approval_requests/new'","      post 'approval_requests', to: 'approval_requests#create'","      patch 'approval_requests/:id/approve', to: 'approval_requests#approve', as: :approve_approval_request",""]}],[{"start":{"row":28,"column":10},"end":{"row":28,"column":12},"action":"remove","lines":["  "],"id":461},{"start":{"row":28,"column":8},"end":{"row":28,"column":10},"action":"remove","lines":["  "]},{"start":{"row":28,"column":6},"end":{"row":28,"column":8},"action":"remove","lines":["  "]}],[{"start":{"row":30,"column":84},"end":{"row":30,"column":91},"action":"remove","lines":["pprove_"],"id":462},{"start":{"row":30,"column":83},"end":{"row":30,"column":84},"action":"remove","lines":["a"]}],[{"start":{"row":26,"column":0},"end":{"row":30,"column":99},"action":"remove","lines":["      ","      # 上長への申請","      get 'approval_requests/new'","      post 'approval_requests', to: 'approval_requests#create'","      patch 'approval_requests/:id/approve', to: 'approval_requests#approve', as: :approval_request"],"id":463},{"start":{"row":25,"column":38},"end":{"row":26,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":0,"column":0},"end":{"row":31,"column":0},"action":"remove","lines":["Rails.application.routes.draw do","","  root 'static_pages#top'","  get '/signup', to: 'users#new'","  ","  # ログイン機能","  get    '/login', to: 'sessions#new'","  post   '/login', to: 'sessions#create'","  delete '/logout', to: 'sessions#destroy'","  ","  resources :base_points","  ","  resources :users do","    collection {post :import}","      ","    member do ","      # 出勤中社員一覧","      get 'attendance_list'","      ","      # 勤怠編集画面","      get 'attendances/edit_one_month'","      patch 'attendances/update_one_month'","      ","      # 勤怠申請モーダルウインドウ","      get 'edit_overtime_requests'","      patch 'update_overtime_requests'","","    end","    resources :attendances, only: :update","  end","end",""],"id":464},{"start":{"row":0,"column":0},"end":{"row":36,"column":3},"action":"insert","lines":["Rails.application.routes.draw do","  root 'static_pages#top'","  get '/signup', to: 'users#new'","  ","  # ログイン機能","  get    '/login', to: 'sessions#new'","  post   '/login', to: 'sessions#create'","  delete '/logout', to: 'sessions#destroy'","  ","  resources :base_points","  ","  resources :users do","    collection { post :import }","      ","    member do ","      # 出勤中社員一覧","      get 'attendance_list'","      ","      # 勤怠編集画面","      get 'attendances/edit_one_month'","      patch 'attendances/update_one_month'","      ","      # 勤怠申請モーダルウインドウ","      get 'edit_overtime_requests'","      patch 'update_overtime_requests'","","      # 承認申請関連ルート","      resources :approval_requests, only: [:new, :create, :show] do","        member do","          post 'approve'","        end","      end","    end","    ","    resources :attendances, only: :update","  end","end"]}],[{"start":{"row":0,"column":0},"end":{"row":36,"column":3},"action":"remove","lines":["Rails.application.routes.draw do","  root 'static_pages#top'","  get '/signup', to: 'users#new'","  ","  # ログイン機能","  get    '/login', to: 'sessions#new'","  post   '/login', to: 'sessions#create'","  delete '/logout', to: 'sessions#destroy'","  ","  resources :base_points","  ","  resources :users do","    collection { post :import }","      ","    member do ","      # 出勤中社員一覧","      get 'attendance_list'","      ","      # 勤怠編集画面","      get 'attendances/edit_one_month'","      patch 'attendances/update_one_month'","      ","      # 勤怠申請モーダルウインドウ","      get 'edit_overtime_requests'","      patch 'update_overtime_requests'","","      # 承認申請関連ルート","      resources :approval_requests, only: [:new, :create, :show] do","        member do","          post 'approve'","        end","      end","    end","    ","    resources :attendances, only: :update","  end","end"],"id":465},{"start":{"row":0,"column":0},"end":{"row":36,"column":3},"action":"insert","lines":["ails.application.routes.draw do","  root 'static_pages#top'","  get '/signup', to: 'users#new'","  ","  # ログイン機能","  get    '/login', to: 'sessions#new'","  post   '/login', to: 'sessions#create'","  delete '/logout', to: 'sessions#destroy'","  ","  resources :base_points","  ","  resources :users do","    collection { post :import }","      ","    member do ","      # 出勤中社員一覧","      get 'attendance_list'","      ","      # 勤怠編集画面","      get 'attendances/edit_one_month'","      patch 'attendances/update_one_month'","      ","      # 勤怠申請モーダルウインドウ","      get 'edit_overtime_requests'","      patch 'update_overtime_requests'","    end","    ","    resources :attendances, only: :update","","    # ユーザーに関連する承認申請ルート","    resources :approval_requests, only: [:new, :create, :show] do","      member do","        post 'approve'","      end","    end","  end","end"]}],[{"start":{"row":0,"column":0},"end":{"row":0,"column":1},"action":"insert","lines":["r"],"id":466}],[{"start":{"row":0,"column":0},"end":{"row":36,"column":3},"action":"remove","lines":["rails.application.routes.draw do","  root 'static_pages#top'","  get '/signup', to: 'users#new'","  ","  # ログイン機能","  get    '/login', to: 'sessions#new'","  post   '/login', to: 'sessions#create'","  delete '/logout', to: 'sessions#destroy'","  ","  resources :base_points","  ","  resources :users do","    collection { post :import }","      ","    member do ","      # 出勤中社員一覧","      get 'attendance_list'","      ","      # 勤怠編集画面","      get 'attendances/edit_one_month'","      patch 'attendances/update_one_month'","      ","      # 勤怠申請モーダルウインドウ","      get 'edit_overtime_requests'","      patch 'update_overtime_requests'","    end","    ","    resources :attendances, only: :update","","    # ユーザーに関連する承認申請ルート","    resources :approval_requests, only: [:new, :create, :show] do","      member do","        post 'approve'","      end","    end","  end","end"],"id":467},{"start":{"row":0,"column":0},"end":{"row":37,"column":0},"action":"insert","lines":["Rails.application.routes.draw do","  root 'static_pages#top'","  get '/signup', to: 'users#new'","  ","  # ログイン機能","  get    '/login', to: 'sessions#new'","  post   '/login', to: 'sessions#create'","  delete '/logout', to: 'sessions#destroy'","  ","  resources :base_points","  ","  resources :users do","    collection { post :import }","      ","    member do ","      # 出勤中社員一覧","      get 'attendance_list'","      ","      # 勤怠編集画面","      get 'attendances/edit_one_month'","      patch 'attendances/update_one_month'","      ","      # 勤怠申請モーダルウインドウ","      get 'edit_overtime_requests'","      patch 'update_overtime_requests'","    end","    ","    resources :attendances, only: :update","","    # ユーザーに関連する承認申請ルート","    resources :approval_requests, only: [:new, :create, :show] do","      member do","        post 'approve'","      end","    end","  end","end",""]}],[{"start":{"row":23,"column":11},"end":{"row":23,"column":23},"action":"insert","lines":["attendances/"],"id":468}],[{"start":{"row":24,"column":13},"end":{"row":24,"column":25},"action":"insert","lines":["attendances/"],"id":469}],[{"start":{"row":15,"column":0},"end":{"row":15,"column":15},"action":"remove","lines":["      # 出勤中社員一覧"],"id":470},{"start":{"row":14,"column":14},"end":{"row":15,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":16,"column":3},"end":{"row":16,"column":4},"action":"remove","lines":[" "],"id":471},{"start":{"row":16,"column":2},"end":{"row":16,"column":3},"action":"remove","lines":[" "]},{"start":{"row":16,"column":0},"end":{"row":16,"column":2},"action":"remove","lines":["  "]},{"start":{"row":15,"column":27},"end":{"row":16,"column":2},"action":"remove","lines":["","  "]}],[{"start":{"row":16,"column":0},"end":{"row":16,"column":14},"action":"remove","lines":["      # 勤怠編集画面"],"id":472},{"start":{"row":15,"column":27},"end":{"row":16,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":19,"column":0},"end":{"row":19,"column":21},"action":"remove","lines":["      # 勤怠申請モーダルウインドウ"],"id":473},{"start":{"row":18,"column":6},"end":{"row":19,"column":0},"action":"remove","lines":["",""]},{"start":{"row":18,"column":4},"end":{"row":18,"column":6},"action":"remove","lines":["  "]},{"start":{"row":18,"column":2},"end":{"row":18,"column":4},"action":"remove","lines":["  "]},{"start":{"row":18,"column":0},"end":{"row":18,"column":2},"action":"remove","lines":["  "]},{"start":{"row":17,"column":42},"end":{"row":18,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":9,"column":1},"end":{"row":9,"column":24},"action":"remove","lines":[" resources :base_points"],"id":474}],[{"start":{"row":9,"column":0},"end":{"row":9,"column":1},"action":"remove","lines":[" "],"id":475},{"start":{"row":8,"column":2},"end":{"row":9,"column":0},"action":"remove","lines":["",""]},{"start":{"row":8,"column":0},"end":{"row":8,"column":2},"action":"remove","lines":["  "]},{"start":{"row":7,"column":42},"end":{"row":8,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":28,"column":5},"end":{"row":29,"column":0},"action":"insert","lines":["",""],"id":476},{"start":{"row":29,"column":0},"end":{"row":29,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":29,"column":2},"end":{"row":29,"column":25},"action":"insert","lines":[" resources :base_points"],"id":477}],[{"start":{"row":19,"column":0},"end":{"row":19,"column":1},"action":"remove","lines":[" "],"id":478},{"start":{"row":18,"column":7},"end":{"row":19,"column":3},"action":"remove","lines":["","   "]}],[{"start":{"row":19,"column":41},"end":{"row":20,"column":0},"action":"remove","lines":["",""],"id":479}],[{"start":{"row":11,"column":0},"end":{"row":11,"column":1},"action":"remove","lines":[" "],"id":480},{"start":{"row":10,"column":31},"end":{"row":11,"column":5},"action":"remove","lines":["","     "]}],[{"start":{"row":20,"column":65},"end":{"row":20,"column":66},"action":"insert","lines":[" "],"id":482}],[{"start":{"row":20,"column":66},"end":{"row":20,"column":84},"action":"insert","lines":["# ユーザーに関連する承認申請ルート"],"id":483}],[{"start":{"row":19,"column":3},"end":{"row":19,"column":22},"action":"remove","lines":[" # ユーザーに関連する承認申請ルート"],"id":484},{"start":{"row":19,"column":2},"end":{"row":19,"column":3},"action":"remove","lines":[" "]},{"start":{"row":19,"column":0},"end":{"row":19,"column":2},"action":"remove","lines":["  "]},{"start":{"row":18,"column":41},"end":{"row":19,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":19,"column":66},"end":{"row":19,"column":67},"action":"insert","lines":[" "],"id":485}],[{"start":{"row":20,"column":4},"end":{"row":21,"column":22},"action":"remove","lines":["  member do","        post 'approve'"],"id":491},{"start":{"row":20,"column":2},"end":{"row":20,"column":4},"action":"remove","lines":["  "]},{"start":{"row":20,"column":0},"end":{"row":20,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":20,"column":0},"end":{"row":21,"column":9},"action":"remove","lines":["","      end"],"id":492},{"start":{"row":19,"column":85},"end":{"row":20,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":19,"column":84},"end":{"row":19,"column":85},"action":"remove","lines":["ト"],"id":493},{"start":{"row":19,"column":83},"end":{"row":19,"column":84},"action":"remove","lines":["ー"]},{"start":{"row":19,"column":82},"end":{"row":19,"column":83},"action":"remove","lines":["ル"]},{"start":{"row":19,"column":81},"end":{"row":19,"column":82},"action":"remove","lines":["請"]},{"start":{"row":19,"column":80},"end":{"row":19,"column":81},"action":"remove","lines":["申"]},{"start":{"row":19,"column":79},"end":{"row":19,"column":80},"action":"remove","lines":["認"]},{"start":{"row":19,"column":78},"end":{"row":19,"column":79},"action":"remove","lines":["承"]},{"start":{"row":19,"column":77},"end":{"row":19,"column":78},"action":"remove","lines":["る"]},{"start":{"row":19,"column":76},"end":{"row":19,"column":77},"action":"remove","lines":["す"]},{"start":{"row":19,"column":75},"end":{"row":19,"column":76},"action":"remove","lines":["連"]},{"start":{"row":19,"column":74},"end":{"row":19,"column":75},"action":"remove","lines":["関"]},{"start":{"row":19,"column":73},"end":{"row":19,"column":74},"action":"remove","lines":["に"]},{"start":{"row":19,"column":72},"end":{"row":19,"column":73},"action":"remove","lines":["ー"]},{"start":{"row":19,"column":71},"end":{"row":19,"column":72},"action":"remove","lines":["ザ"]},{"start":{"row":19,"column":70},"end":{"row":19,"column":71},"action":"remove","lines":["ー"]},{"start":{"row":19,"column":69},"end":{"row":19,"column":70},"action":"remove","lines":["ユ"]},{"start":{"row":19,"column":68},"end":{"row":19,"column":69},"action":"remove","lines":[" "]}],[{"start":{"row":19,"column":67},"end":{"row":19,"column":68},"action":"remove","lines":["#"],"id":494},{"start":{"row":19,"column":66},"end":{"row":19,"column":67},"action":"remove","lines":[" "]},{"start":{"row":19,"column":65},"end":{"row":19,"column":66},"action":"remove","lines":[" "]},{"start":{"row":19,"column":64},"end":{"row":19,"column":65},"action":"remove","lines":["o"]},{"start":{"row":19,"column":63},"end":{"row":19,"column":64},"action":"remove","lines":["d"]}],[{"start":{"row":20,"column":4},"end":{"row":20,"column":7},"action":"remove","lines":["end"],"id":495},{"start":{"row":20,"column":2},"end":{"row":20,"column":4},"action":"remove","lines":["  "]},{"start":{"row":20,"column":0},"end":{"row":20,"column":2},"action":"remove","lines":["  "]},{"start":{"row":19,"column":63},"end":{"row":20,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":19,"column":15},"end":{"row":19,"column":32},"action":"remove","lines":["approval_requests"],"id":496},{"start":{"row":19,"column":15},"end":{"row":19,"column":16},"action":"insert","lines":["s"]},{"start":{"row":19,"column":16},"end":{"row":19,"column":17},"action":"insert","lines":["p"]},{"start":{"row":19,"column":17},"end":{"row":19,"column":18},"action":"insert","lines":["e"]},{"start":{"row":19,"column":18},"end":{"row":19,"column":19},"action":"insert","lines":["r"]}],[{"start":{"row":19,"column":19},"end":{"row":19,"column":20},"action":"insert","lines":["i"],"id":497}],[{"start":{"row":19,"column":19},"end":{"row":19,"column":20},"action":"remove","lines":["i"],"id":498},{"start":{"row":19,"column":18},"end":{"row":19,"column":19},"action":"remove","lines":["r"]},{"start":{"row":19,"column":17},"end":{"row":19,"column":18},"action":"remove","lines":["e"]}],[{"start":{"row":19,"column":17},"end":{"row":19,"column":18},"action":"insert","lines":["r"],"id":499},{"start":{"row":19,"column":18},"end":{"row":19,"column":19},"action":"insert","lines":["i"]},{"start":{"row":19,"column":19},"end":{"row":19,"column":20},"action":"insert","lines":["o"]},{"start":{"row":19,"column":20},"end":{"row":19,"column":21},"action":"insert","lines":["r"]}],[{"start":{"row":19,"column":21},"end":{"row":19,"column":22},"action":"insert","lines":["s"],"id":500}],[{"start":{"row":19,"column":17},"end":{"row":19,"column":18},"action":"insert","lines":["e"],"id":501}],[{"start":{"row":19,"column":16},"end":{"row":19,"column":17},"action":"insert","lines":["u"],"id":502}],[{"start":{"row":19,"column":15},"end":{"row":19,"column":24},"action":"remove","lines":["superiors"],"id":504},{"start":{"row":19,"column":15},"end":{"row":19,"column":24},"action":"insert","lines":["superiors"]}],[{"start":{"row":19,"column":24},"end":{"row":19,"column":55},"action":"remove","lines":[", only: [:new, :create, :show] "],"id":505}],[{"start":{"row":15,"column":40},"end":{"row":15,"column":45},"action":"remove","lines":["uests"],"id":507}],[{"start":{"row":16,"column":44},"end":{"row":16,"column":49},"action":"remove","lines":["uests"],"id":508}],[{"start":{"row":19,"column":24},"end":{"row":20,"column":0},"action":"insert","lines":["",""],"id":509},{"start":{"row":20,"column":0},"end":{"row":20,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":20,"column":4},"end":{"row":20,"column":5},"action":"insert","lines":[" "],"id":510},{"start":{"row":20,"column":5},"end":{"row":20,"column":6},"action":"insert","lines":["m"]},{"start":{"row":20,"column":6},"end":{"row":20,"column":7},"action":"insert","lines":["n"]}],[{"start":{"row":20,"column":6},"end":{"row":20,"column":7},"action":"remove","lines":["n"],"id":511}],[{"start":{"row":20,"column":6},"end":{"row":20,"column":7},"action":"insert","lines":["e"],"id":512},{"start":{"row":20,"column":7},"end":{"row":20,"column":8},"action":"insert","lines":["n"]},{"start":{"row":20,"column":8},"end":{"row":20,"column":9},"action":"insert","lines":["b"]},{"start":{"row":20,"column":9},"end":{"row":20,"column":10},"action":"insert","lines":["e"]},{"start":{"row":20,"column":10},"end":{"row":20,"column":11},"action":"insert","lines":["r"]}],[{"start":{"row":20,"column":11},"end":{"row":20,"column":12},"action":"insert","lines":[" "],"id":513},{"start":{"row":20,"column":12},"end":{"row":20,"column":13},"action":"insert","lines":["d"]},{"start":{"row":20,"column":13},"end":{"row":20,"column":14},"action":"insert","lines":["o"]}],[{"start":{"row":20,"column":14},"end":{"row":21,"column":0},"action":"insert","lines":["",""],"id":517},{"start":{"row":21,"column":0},"end":{"row":21,"column":7},"action":"insert","lines":["       "]},{"start":{"row":21,"column":7},"end":{"row":21,"column":8},"action":"insert","lines":["e"]},{"start":{"row":21,"column":8},"end":{"row":21,"column":9},"action":"insert","lines":["n"]}],[{"start":{"row":21,"column":9},"end":{"row":21,"column":10},"action":"insert","lines":["d"],"id":518},{"start":{"row":21,"column":5},"end":{"row":21,"column":7},"action":"remove","lines":["  "]}],[{"start":{"row":20,"column":14},"end":{"row":21,"column":0},"action":"insert","lines":["",""],"id":519},{"start":{"row":21,"column":0},"end":{"row":21,"column":7},"action":"insert","lines":["       "]}],[{"start":{"row":21,"column":7},"end":{"row":21,"column":8},"action":"insert","lines":["r"],"id":520},{"start":{"row":21,"column":8},"end":{"row":21,"column":9},"action":"insert","lines":["a"]},{"start":{"row":21,"column":9},"end":{"row":21,"column":10},"action":"insert","lines":["i"]}],[{"start":{"row":21,"column":9},"end":{"row":21,"column":10},"action":"remove","lines":["i"],"id":521},{"start":{"row":21,"column":8},"end":{"row":21,"column":9},"action":"remove","lines":["a"]},{"start":{"row":21,"column":7},"end":{"row":21,"column":8},"action":"remove","lines":["r"]}],[{"start":{"row":21,"column":7},"end":{"row":21,"column":8},"action":"insert","lines":["s"],"id":522},{"start":{"row":21,"column":8},"end":{"row":21,"column":9},"action":"insert","lines":["u"]},{"start":{"row":21,"column":9},"end":{"row":21,"column":10},"action":"insert","lines":["p"]},{"start":{"row":21,"column":10},"end":{"row":21,"column":11},"action":"insert","lines":["e"]},{"start":{"row":21,"column":11},"end":{"row":21,"column":12},"action":"insert","lines":["r"]},{"start":{"row":21,"column":12},"end":{"row":21,"column":13},"action":"insert","lines":["i"]},{"start":{"row":21,"column":13},"end":{"row":21,"column":14},"action":"insert","lines":["o"]}],[{"start":{"row":21,"column":14},"end":{"row":21,"column":15},"action":"insert","lines":["r"],"id":523},{"start":{"row":21,"column":15},"end":{"row":21,"column":16},"action":"insert","lines":["s"]}],[{"start":{"row":21,"column":16},"end":{"row":21,"column":17},"action":"insert","lines":["/"],"id":524}],[{"start":{"row":21,"column":17},"end":{"row":21,"column":39},"action":"insert","lines":["monthly_attendance_req"],"id":525}],[{"start":{"row":21,"column":7},"end":{"row":21,"column":8},"action":"insert","lines":[" "],"id":526}],[{"start":{"row":21,"column":6},"end":{"row":21,"column":7},"action":"insert","lines":["p"],"id":527},{"start":{"row":21,"column":7},"end":{"row":21,"column":8},"action":"insert","lines":["a"]},{"start":{"row":21,"column":8},"end":{"row":21,"column":9},"action":"insert","lines":["t"]}],[{"start":{"row":21,"column":8},"end":{"row":21,"column":9},"action":"remove","lines":["t"],"id":528},{"start":{"row":21,"column":7},"end":{"row":21,"column":8},"action":"remove","lines":["a"]},{"start":{"row":21,"column":6},"end":{"row":21,"column":7},"action":"remove","lines":["p"]}],[{"start":{"row":21,"column":6},"end":{"row":21,"column":11},"action":"insert","lines":["PATCH"],"id":529}],[{"start":{"row":21,"column":6},"end":{"row":21,"column":11},"action":"remove","lines":["PATCH"],"id":530},{"start":{"row":21,"column":6},"end":{"row":21,"column":11},"action":"insert","lines":["patch"]}],[{"start":{"row":21,"column":13},"end":{"row":21,"column":14},"action":"insert","lines":["'"],"id":531}],[{"start":{"row":21,"column":46},"end":{"row":21,"column":47},"action":"insert","lines":["\""],"id":532}],[{"start":{"row":21,"column":46},"end":{"row":21,"column":47},"action":"remove","lines":["\""],"id":533}],[{"start":{"row":21,"column":46},"end":{"row":21,"column":47},"action":"insert","lines":["'"],"id":534}],[{"start":{"row":19,"column":24},"end":{"row":19,"column":25},"action":"insert","lines":[" "],"id":535}],[{"start":{"row":19,"column":25},"end":{"row":19,"column":26},"action":"insert","lines":["d"],"id":536},{"start":{"row":19,"column":26},"end":{"row":19,"column":27},"action":"insert","lines":["o"]}],[{"start":{"row":20,"column":5},"end":{"row":22,"column":8},"action":"remove","lines":["menber do","      patch  'superiors/monthly_attendance_req'","     end"],"id":537}],[{"start":{"row":19,"column":26},"end":{"row":19,"column":27},"action":"remove","lines":["o"],"id":538},{"start":{"row":19,"column":25},"end":{"row":19,"column":26},"action":"remove","lines":["d"]}],[{"start":{"row":19,"column":25},"end":{"row":19,"column":26},"action":"insert","lines":["d"],"id":539},{"start":{"row":19,"column":26},"end":{"row":19,"column":27},"action":"insert","lines":["o"]}],[{"start":{"row":19,"column":27},"end":{"row":20,"column":5},"action":"remove","lines":["","     "],"id":540}],[{"start":{"row":19,"column":27},"end":{"row":20,"column":0},"action":"insert","lines":["",""],"id":541},{"start":{"row":20,"column":0},"end":{"row":20,"column":6},"action":"insert","lines":["      "]},{"start":{"row":20,"column":6},"end":{"row":20,"column":7},"action":"insert","lines":["e"]},{"start":{"row":20,"column":7},"end":{"row":20,"column":8},"action":"insert","lines":["n"]},{"start":{"row":20,"column":8},"end":{"row":20,"column":9},"action":"insert","lines":["d"]},{"start":{"row":20,"column":4},"end":{"row":20,"column":6},"action":"remove","lines":["  "]}],[{"start":{"row":19,"column":27},"end":{"row":20,"column":0},"action":"insert","lines":["",""],"id":542},{"start":{"row":20,"column":0},"end":{"row":20,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":20,"column":6},"end":{"row":22,"column":8},"action":"insert","lines":["menber do","      patch  'superiors/monthly_attendance_req'","     end"],"id":543}],[{"start":{"row":20,"column":8},"end":{"row":20,"column":9},"action":"remove","lines":["n"],"id":544},{"start":{"row":20,"column":7},"end":{"row":20,"column":8},"action":"remove","lines":["e"]}],[{"start":{"row":20,"column":7},"end":{"row":20,"column":8},"action":"insert","lines":["e"],"id":545},{"start":{"row":20,"column":8},"end":{"row":20,"column":9},"action":"insert","lines":["m"]}],[{"start":{"row":19,"column":25},"end":{"row":19,"column":40},"action":"insert","lines":[", only: :update"],"id":546}],[{"start":{"row":19,"column":40},"end":{"row":19,"column":41},"action":"insert","lines":[" "],"id":547}],[{"start":{"row":21,"column":24},"end":{"row":21,"column":25},"action":"insert","lines":["u"],"id":548},{"start":{"row":21,"column":25},"end":{"row":21,"column":26},"action":"insert","lines":["p"]}],[{"start":{"row":21,"column":25},"end":{"row":21,"column":26},"action":"remove","lines":["p"],"id":549},{"start":{"row":21,"column":24},"end":{"row":21,"column":25},"action":"remove","lines":["u"]}],[{"start":{"row":21,"column":23},"end":{"row":21,"column":24},"action":"remove","lines":["/"],"id":550},{"start":{"row":21,"column":22},"end":{"row":21,"column":23},"action":"remove","lines":["s"]},{"start":{"row":21,"column":21},"end":{"row":21,"column":22},"action":"remove","lines":["r"]},{"start":{"row":21,"column":20},"end":{"row":21,"column":21},"action":"remove","lines":["o"]},{"start":{"row":21,"column":19},"end":{"row":21,"column":20},"action":"remove","lines":["i"]},{"start":{"row":21,"column":18},"end":{"row":21,"column":19},"action":"remove","lines":["r"]},{"start":{"row":21,"column":17},"end":{"row":21,"column":18},"action":"remove","lines":["e"]},{"start":{"row":21,"column":16},"end":{"row":21,"column":17},"action":"remove","lines":["p"]},{"start":{"row":21,"column":15},"end":{"row":21,"column":16},"action":"remove","lines":["u"]},{"start":{"row":21,"column":14},"end":{"row":21,"column":15},"action":"remove","lines":["s"]}],[{"start":{"row":21,"column":14},"end":{"row":21,"column":15},"action":"insert","lines":["u"],"id":551},{"start":{"row":21,"column":15},"end":{"row":21,"column":16},"action":"insert","lines":["p"]},{"start":{"row":21,"column":16},"end":{"row":21,"column":17},"action":"insert","lines":["d"]},{"start":{"row":21,"column":17},"end":{"row":21,"column":18},"action":"insert","lines":["a"]},{"start":{"row":21,"column":18},"end":{"row":21,"column":19},"action":"insert","lines":["t"]},{"start":{"row":21,"column":19},"end":{"row":21,"column":20},"action":"insert","lines":["e"]}],[{"start":{"row":21,"column":20},"end":{"row":21,"column":21},"action":"insert","lines":["_"],"id":552}],[{"start":{"row":21,"column":32},"end":{"row":21,"column":39},"action":"remove","lines":["endance"],"id":553}],[{"start":{"row":21,"column":14},"end":{"row":21,"column":21},"action":"remove","lines":["update_"],"id":554}],[{"start":{"row":19,"column":0},"end":{"row":23,"column":7},"action":"remove","lines":["    resources :superiors , only: :update do","      member do","      patch  'monthly_att_req'","     end","    end"],"id":558},{"start":{"row":18,"column":41},"end":{"row":19,"column":0},"action":"remove","lines":["",""]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":11,"column":14},"end":{"row":11,"column":14},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1694078205564,"hash":"4641112ca2c92914ae21f4b82aa8201ddbf70b17"}