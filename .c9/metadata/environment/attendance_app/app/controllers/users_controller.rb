{"filter":false,"title":"users_controller.rb","tooltip":"/attendance_app/app/controllers/users_controller.rb","undoManager":{"mark":55,"position":55,"stack":[[{"start":{"row":72,"column":28},"end":{"row":73,"column":0},"action":"insert","lines":["",""],"id":263},{"start":{"row":73,"column":0},"end":{"row":73,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":73,"column":4},"end":{"row":73,"column":55},"action":"insert","lines":["@selected_date = Date.parse(params[:selected_date])"],"id":264}],[{"start":{"row":72,"column":28},"end":{"row":73,"column":0},"action":"insert","lines":["",""],"id":265},{"start":{"row":73,"column":0},"end":{"row":73,"column":4},"action":"insert","lines":["    "]},{"start":{"row":73,"column":4},"end":{"row":73,"column":5},"action":"insert","lines":["d"]}],[{"start":{"row":73,"column":5},"end":{"row":73,"column":6},"action":"insert","lines":["e"],"id":266},{"start":{"row":73,"column":6},"end":{"row":73,"column":7},"action":"insert","lines":["b"]},{"start":{"row":73,"column":7},"end":{"row":73,"column":8},"action":"insert","lines":["u"]},{"start":{"row":73,"column":8},"end":{"row":73,"column":9},"action":"insert","lines":["g"]},{"start":{"row":73,"column":9},"end":{"row":73,"column":10},"action":"insert","lines":["g"]},{"start":{"row":73,"column":10},"end":{"row":73,"column":11},"action":"insert","lines":["e"]},{"start":{"row":73,"column":11},"end":{"row":73,"column":12},"action":"insert","lines":["r"]}],[{"start":{"row":74,"column":55},"end":{"row":75,"column":0},"action":"insert","lines":["",""],"id":267},{"start":{"row":75,"column":0},"end":{"row":75,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":75,"column":4},"end":{"row":76,"column":18},"action":"insert","lines":["  p params[:selected_date]","  p @selected_date"],"id":268}],[{"start":{"row":75,"column":4},"end":{"row":75,"column":6},"action":"remove","lines":["  "],"id":269}],[{"start":{"row":76,"column":2},"end":{"row":76,"column":3},"action":"insert","lines":[" "],"id":270},{"start":{"row":76,"column":3},"end":{"row":76,"column":4},"action":"insert","lines":[" "]}],[{"start":{"row":73,"column":4},"end":{"row":73,"column":12},"action":"remove","lines":["debugger"],"id":271},{"start":{"row":73,"column":2},"end":{"row":73,"column":4},"action":"remove","lines":["  "]},{"start":{"row":73,"column":0},"end":{"row":73,"column":2},"action":"remove","lines":["  "]},{"start":{"row":72,"column":28},"end":{"row":73,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":74,"column":0},"end":{"row":75,"column":20},"action":"remove","lines":["    p params[:selected_date]","    p @selected_date"],"id":272},{"start":{"row":73,"column":55},"end":{"row":74,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":76,"column":2},"end":{"row":77,"column":5},"action":"remove","lines":["def update_overtime_requests","  end"],"id":273},{"start":{"row":76,"column":2},"end":{"row":90,"column":0},"action":"insert","lines":["def update_overtime_requests","  @user = User.find(params[:id])","  @overtime_request = @user.overtime_requests.find_by(date: params[:selected_date])","","  if @overtime_request.update(overtime_requests_params)","    flash[:success] = \"残業申請が更新されました。\"","  else","    flash[:danger] = \"残業申請の更新に失敗しました。\"","  end","","  respond_to do |format|","    format.js","  end","end",""]}],[{"start":{"row":85,"column":0},"end":{"row":88,"column":5},"action":"remove","lines":["","  respond_to do |format|","    format.js","  end"],"id":274},{"start":{"row":84,"column":5},"end":{"row":85,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":78,"column":83},"end":{"row":79,"column":0},"action":"remove","lines":["",""],"id":275}],[{"start":{"row":78,"column":60},"end":{"row":78,"column":82},"action":"remove","lines":["params[:selected_date]"],"id":276},{"start":{"row":78,"column":60},"end":{"row":78,"column":61},"action":"insert","lines":["@"]},{"start":{"row":78,"column":61},"end":{"row":78,"column":62},"action":"insert","lines":["l"]},{"start":{"row":78,"column":62},"end":{"row":78,"column":63},"action":"insert","lines":["a"]},{"start":{"row":78,"column":63},"end":{"row":78,"column":64},"action":"insert","lines":["s"]},{"start":{"row":78,"column":64},"end":{"row":78,"column":65},"action":"insert","lines":["t"]}],[{"start":{"row":78,"column":65},"end":{"row":78,"column":66},"action":"insert","lines":["d"],"id":277}],[{"start":{"row":78,"column":65},"end":{"row":78,"column":66},"action":"remove","lines":["d"],"id":278}],[{"start":{"row":78,"column":65},"end":{"row":78,"column":66},"action":"insert","lines":["_"],"id":279},{"start":{"row":78,"column":66},"end":{"row":78,"column":67},"action":"insert","lines":["d"]},{"start":{"row":78,"column":67},"end":{"row":78,"column":68},"action":"insert","lines":["a"]},{"start":{"row":78,"column":68},"end":{"row":78,"column":69},"action":"insert","lines":["y"]}],[{"start":{"row":73,"column":40},"end":{"row":73,"column":53},"action":"remove","lines":["selected_date"],"id":280},{"start":{"row":73,"column":40},"end":{"row":73,"column":49},"action":"insert","lines":["@last_day"]}],[{"start":{"row":83,"column":4},"end":{"row":83,"column":5},"action":"remove","lines":["d"],"id":281},{"start":{"row":83,"column":3},"end":{"row":83,"column":4},"action":"remove","lines":["n"]}],[{"start":{"row":77,"column":0},"end":{"row":83,"column":3},"action":"remove","lines":["  @user = User.find(params[:id])","  @overtime_request = @user.overtime_requests.find_by(date: @last_day)","  if @overtime_request.update(overtime_requests_params)","    flash[:success] = \"残業申請が更新されました。\"","  else","    flash[:danger] = \"残業申請の更新に失敗しました。\"","  e"],"id":282},{"start":{"row":76,"column":30},"end":{"row":77,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":77,"column":0},"end":{"row":77,"column":1},"action":"insert","lines":[" "],"id":283},{"start":{"row":77,"column":1},"end":{"row":77,"column":2},"action":"insert","lines":[" "]}],[{"start":{"row":73,"column":0},"end":{"row":73,"column":51},"action":"remove","lines":["    @selected_date = Date.parse(params[:@last_day])"],"id":284},{"start":{"row":72,"column":28},"end":{"row":73,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":28,"column":4},"end":{"row":29,"column":99},"action":"remove","lines":[" # 承認待ちの申請情報を取得する","    @pending_overtime_requests = OvertimeRequest.where(status: \"申請中\", superior_id: current_user.id)"],"id":285},{"start":{"row":28,"column":4},"end":{"row":29,"column":99},"action":"insert","lines":[" # 承認待ちの申請情報を取得する","    @pending_overtime_requests = OvertimeRequest.where(status: \"申請中\", superior_id: current_user.id)"]}],[{"start":{"row":25,"column":2},"end":{"row":30,"column":5},"action":"remove","lines":["def show","    @worked_sum = @attendances.where.not(started_at: nil).count","    ","     # 承認待ちの申請情報を取得する","    @pending_overtime_requests = OvertimeRequest.where(status: \"申請中\", superior_id: current_user.id)","  end"],"id":286},{"start":{"row":25,"column":2},"end":{"row":34,"column":0},"action":"insert","lines":["def show","  @worked_sum = @attendances.where.not(started_at: nil).count","","  # 承認待ちの申請情報を取得する","  @pending_overtime_requests = OvertimeRequest.where(status: \"申請中\", superior_id: current_user.id)","","  puts \"@pending_approval_requests: #{@pending_approval_requests.inspect}\"","  puts \"@pending_approval_requests_count: #{@pending_approval_requests_count.inspect}\"","end",""]}],[{"start":{"row":26,"column":0},"end":{"row":26,"column":2},"action":"insert","lines":["  "],"id":287},{"start":{"row":27,"column":0},"end":{"row":27,"column":2},"action":"insert","lines":["  "]},{"start":{"row":28,"column":0},"end":{"row":28,"column":2},"action":"insert","lines":["  "]},{"start":{"row":29,"column":0},"end":{"row":29,"column":2},"action":"insert","lines":["  "]},{"start":{"row":30,"column":0},"end":{"row":30,"column":2},"action":"insert","lines":["  "]},{"start":{"row":31,"column":0},"end":{"row":31,"column":2},"action":"insert","lines":["  "]},{"start":{"row":32,"column":0},"end":{"row":32,"column":2},"action":"insert","lines":["  "]},{"start":{"row":33,"column":0},"end":{"row":33,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":28,"column":4},"end":{"row":32,"column":88},"action":"remove","lines":["# 承認待ちの申請情報を取得する","    @pending_overtime_requests = OvertimeRequest.where(status: \"申請中\", superior_id: current_user.id)","  ","    puts \"@pending_approval_requests: #{@pending_approval_requests.inspect}\"","    puts \"@pending_approval_requests_count: #{@pending_approval_requests_count.inspect}\""],"id":288},{"start":{"row":28,"column":4},"end":{"row":32,"column":5},"action":"insert","lines":["if current_user.is_approver? # 上長ユーザーの場合","    @pending_approval_requests = ApprovalRequest.where(status: \"申請中\", approver: current_user.name)","    @pending_overtime_requests = OvertimeRequest.where(status: \"申請中\", superior_id: current_user.id)","    @pending_approval_requests_count = @pending_approval_requests.count","  end"]}],[{"start":{"row":29,"column":0},"end":{"row":29,"column":2},"action":"insert","lines":["  "],"id":289},{"start":{"row":30,"column":0},"end":{"row":30,"column":2},"action":"insert","lines":["  "]},{"start":{"row":31,"column":0},"end":{"row":31,"column":2},"action":"insert","lines":["  "]},{"start":{"row":32,"column":0},"end":{"row":32,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":76,"column":2},"end":{"row":80,"column":5},"action":"remove","lines":["def edit_overtime_requests","  end","","  def update_overtime_requests","  end"],"id":290},{"start":{"row":76,"column":0},"end":{"row":76,"column":2},"action":"remove","lines":["  "]},{"start":{"row":75,"column":2},"end":{"row":76,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":75,"column":2},"end":{"row":76,"column":0},"action":"remove","lines":["",""],"id":291},{"start":{"row":75,"column":0},"end":{"row":75,"column":2},"action":"remove","lines":["  "]},{"start":{"row":74,"column":5},"end":{"row":75,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":2,"column":34},"end":{"row":2,"column":84},"action":"remove","lines":[":edit_overtime_requests, :update_overtime_requests"],"id":292}],[{"start":{"row":2,"column":0},"end":{"row":2,"column":34},"action":"remove","lines":["                                  "],"id":293},{"start":{"row":1,"column":66},"end":{"row":2,"column":0},"action":"remove","lines":["",""]},{"start":{"row":1,"column":65},"end":{"row":1,"column":66},"action":"remove","lines":[","]}],[{"start":{"row":84,"column":2},"end":{"row":86,"column":5},"action":"remove","lines":["def overtime_requests_params","    params.require(:user).permit(:ended_at, :approved, :note, :approval_status)","  end"],"id":294},{"start":{"row":84,"column":0},"end":{"row":84,"column":2},"action":"remove","lines":["  "]},{"start":{"row":83,"column":2},"end":{"row":84,"column":0},"action":"remove","lines":["",""]},{"start":{"row":83,"column":0},"end":{"row":83,"column":2},"action":"remove","lines":["  "]},{"start":{"row":82,"column":5},"end":{"row":83,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":7,"column":44},"end":{"row":7,"column":69},"action":"remove","lines":[", :edit_overtime_requests"],"id":295}],[{"start":{"row":4,"column":39},"end":{"row":4,"column":90},"action":"remove","lines":[" :edit_overtime_requests, :update_overtime_requests"],"id":296},{"start":{"row":4,"column":38},"end":{"row":4,"column":39},"action":"remove","lines":[" "]},{"start":{"row":4,"column":36},"end":{"row":4,"column":38},"action":"remove","lines":["  "]},{"start":{"row":4,"column":34},"end":{"row":4,"column":36},"action":"remove","lines":["  "]},{"start":{"row":4,"column":32},"end":{"row":4,"column":34},"action":"remove","lines":["  "]},{"start":{"row":4,"column":30},"end":{"row":4,"column":32},"action":"remove","lines":["  "]},{"start":{"row":4,"column":28},"end":{"row":4,"column":30},"action":"remove","lines":["  "]},{"start":{"row":4,"column":26},"end":{"row":4,"column":28},"action":"remove","lines":["  "]},{"start":{"row":4,"column":24},"end":{"row":4,"column":26},"action":"remove","lines":["  "]},{"start":{"row":4,"column":22},"end":{"row":4,"column":24},"action":"remove","lines":["  "]},{"start":{"row":4,"column":20},"end":{"row":4,"column":22},"action":"remove","lines":["  "]},{"start":{"row":4,"column":18},"end":{"row":4,"column":20},"action":"remove","lines":["  "]},{"start":{"row":4,"column":16},"end":{"row":4,"column":18},"action":"remove","lines":["  "]},{"start":{"row":4,"column":14},"end":{"row":4,"column":16},"action":"remove","lines":["  "]},{"start":{"row":4,"column":12},"end":{"row":4,"column":14},"action":"remove","lines":["  "]},{"start":{"row":4,"column":10},"end":{"row":4,"column":12},"action":"remove","lines":["  "]}],[{"start":{"row":4,"column":8},"end":{"row":4,"column":10},"action":"remove","lines":["  "],"id":297},{"start":{"row":4,"column":6},"end":{"row":4,"column":8},"action":"remove","lines":["  "]},{"start":{"row":4,"column":4},"end":{"row":4,"column":6},"action":"remove","lines":["  "]},{"start":{"row":4,"column":2},"end":{"row":4,"column":4},"action":"remove","lines":["  "]},{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"remove","lines":["  "]},{"start":{"row":3,"column":81},"end":{"row":4,"column":0},"action":"remove","lines":["",""]},{"start":{"row":3,"column":80},"end":{"row":3,"column":81},"action":"remove","lines":[" "]}],[{"start":{"row":3,"column":79},"end":{"row":3,"column":80},"action":"remove","lines":[","],"id":298}],[{"start":{"row":25,"column":0},"end":{"row":30,"column":7},"action":"remove","lines":["  ","    if current_user.is_approver? # 上長ユーザーの場合","      @pending_approval_requests = ApprovalRequest.where(status: \"申請中\", approver: current_user.name)","      @pending_overtime_requests = OvertimeRequest.where(status: \"申請中\", superior_id: current_user.id)","      @pending_approval_requests_count = @pending_approval_requests.count","    end"],"id":299},{"start":{"row":24,"column":63},"end":{"row":25,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":24,"column":63},"end":{"row":25,"column":0},"action":"insert","lines":["",""],"id":300},{"start":{"row":25,"column":0},"end":{"row":25,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":25,"column":4},"end":{"row":34,"column":5},"action":"insert","lines":[" @user = User.find_by(id: params[:id])","","  if @user.nil?","    # ユーザーが見つからない場合の処理","    flash[:danger] = \"ユーザーが見つかりません。\"","    redirect_to(root_url)","  else","    # ユーザーが見つかった場合の処理","    # その他のコード...","  end"],"id":301}],[{"start":{"row":26,"column":0},"end":{"row":26,"column":2},"action":"insert","lines":["  "],"id":302},{"start":{"row":27,"column":0},"end":{"row":27,"column":2},"action":"insert","lines":["  "]},{"start":{"row":28,"column":0},"end":{"row":28,"column":2},"action":"insert","lines":["  "]},{"start":{"row":29,"column":0},"end":{"row":29,"column":2},"action":"insert","lines":["  "]},{"start":{"row":30,"column":0},"end":{"row":30,"column":2},"action":"insert","lines":["  "]},{"start":{"row":31,"column":0},"end":{"row":31,"column":2},"action":"insert","lines":["  "]},{"start":{"row":32,"column":0},"end":{"row":32,"column":2},"action":"insert","lines":["  "]},{"start":{"row":33,"column":0},"end":{"row":33,"column":2},"action":"insert","lines":["  "]},{"start":{"row":34,"column":0},"end":{"row":34,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":26,"column":0},"end":{"row":26,"column":1},"action":"remove","lines":[" "],"id":303},{"start":{"row":25,"column":42},"end":{"row":26,"column":1},"action":"remove","lines":[""," "]}],[{"start":{"row":23,"column":2},"end":{"row":34,"column":5},"action":"remove","lines":["def show","    @worked_sum = @attendances.where.not(started_at: nil).count","     @user = User.find_by(id: params[:id])","    if @user.nil?","      # ユーザーが見つからない場合の処理","      flash[:danger] = \"ユーザーが見つかりません。\"","      redirect_to(root_url)","    else","      # ユーザーが見つかった場合の処理","      # その他のコード...","    end","  end"],"id":304},{"start":{"row":23,"column":2},"end":{"row":39,"column":0},"action":"insert","lines":["def show","  @user = User.find_by(id: params[:id])","  if @user.nil?","    # ユーザーが見つからない場合の処理","    flash[:danger] = \"ユーザーが見つかりません。\"","    redirect_to(root_url)","  else","    # ユーザーが見つかった場合の処理","    # その他のコード...","","    # @attendances を設定するための処理を追加","    @attendances = @user.attendances.where(worked_on: @first_day..@last_day).order(:worked_on)","","    @worked_sum = @attendances.where.not(started_at: nil).count","  end","end",""]}],[{"start":{"row":24,"column":0},"end":{"row":24,"column":2},"action":"insert","lines":["  "],"id":305},{"start":{"row":25,"column":0},"end":{"row":25,"column":2},"action":"insert","lines":["  "]},{"start":{"row":26,"column":0},"end":{"row":26,"column":2},"action":"insert","lines":["  "]},{"start":{"row":27,"column":0},"end":{"row":27,"column":2},"action":"insert","lines":["  "]},{"start":{"row":28,"column":0},"end":{"row":28,"column":2},"action":"insert","lines":["  "]},{"start":{"row":29,"column":0},"end":{"row":29,"column":2},"action":"insert","lines":["  "]},{"start":{"row":30,"column":0},"end":{"row":30,"column":2},"action":"insert","lines":["  "]},{"start":{"row":31,"column":0},"end":{"row":31,"column":2},"action":"insert","lines":["  "]},{"start":{"row":32,"column":0},"end":{"row":32,"column":2},"action":"insert","lines":["  "]},{"start":{"row":33,"column":0},"end":{"row":33,"column":2},"action":"insert","lines":["  "]},{"start":{"row":34,"column":0},"end":{"row":34,"column":2},"action":"insert","lines":["  "]},{"start":{"row":35,"column":0},"end":{"row":35,"column":2},"action":"insert","lines":["  "]},{"start":{"row":36,"column":0},"end":{"row":36,"column":2},"action":"insert","lines":["  "]},{"start":{"row":37,"column":0},"end":{"row":37,"column":2},"action":"insert","lines":["  "]},{"start":{"row":38,"column":0},"end":{"row":38,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":24,"column":3},"end":{"row":33,"column":34},"action":"remove","lines":[" @user = User.find_by(id: params[:id])","    if @user.nil?","      # ユーザーが見つからない場合の処理","      flash[:danger] = \"ユーザーが見つかりません。\"","      redirect_to(root_url)","    else","      # ユーザーが見つかった場合の処理","      # その他のコード...","  ","      # @attendances を設定するための処理を追加"],"id":306},{"start":{"row":24,"column":2},"end":{"row":24,"column":3},"action":"remove","lines":[" "]},{"start":{"row":24,"column":0},"end":{"row":24,"column":2},"action":"remove","lines":["  "]},{"start":{"row":23,"column":10},"end":{"row":24,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":27,"column":2},"end":{"row":27,"column":7},"action":"remove","lines":["  end"],"id":307},{"start":{"row":27,"column":0},"end":{"row":27,"column":2},"action":"remove","lines":["  "]},{"start":{"row":26,"column":65},"end":{"row":27,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":24,"column":96},"end":{"row":25,"column":2},"action":"remove","lines":["","  "],"id":308}],[{"start":{"row":24,"column":4},"end":{"row":24,"column":6},"action":"remove","lines":["  "],"id":309},{"start":{"row":24,"column":2},"end":{"row":24,"column":4},"action":"remove","lines":["  "]}],[{"start":{"row":24,"column":2},"end":{"row":24,"column":3},"action":"insert","lines":[" "],"id":310},{"start":{"row":24,"column":3},"end":{"row":24,"column":4},"action":"insert","lines":[" "]}],[{"start":{"row":25,"column":4},"end":{"row":25,"column":6},"action":"remove","lines":["  "],"id":311},{"start":{"row":25,"column":2},"end":{"row":25,"column":4},"action":"remove","lines":["  "]}],[{"start":{"row":25,"column":2},"end":{"row":25,"column":3},"action":"insert","lines":[" "],"id":312},{"start":{"row":25,"column":3},"end":{"row":25,"column":4},"action":"insert","lines":[" "]}],[{"start":{"row":3,"column":80},"end":{"row":4,"column":0},"action":"insert","lines":["",""],"id":313},{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":4,"column":2},"end":{"row":5,"column":0},"action":"insert","lines":["before_action :superior_users, only: [:show]",""],"id":314}],[{"start":{"row":4,"column":46},"end":{"row":5,"column":0},"action":"remove","lines":["",""],"id":315}],[{"start":{"row":26,"column":63},"end":{"row":27,"column":0},"action":"insert","lines":["",""],"id":316},{"start":{"row":27,"column":0},"end":{"row":27,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":27,"column":4},"end":{"row":27,"column":65},"action":"insert","lines":["@overtime_instructor = @attendances.first.overtime_instructor"],"id":317}],[{"start":{"row":27,"column":3},"end":{"row":27,"column":65},"action":"remove","lines":[" @overtime_instructor = @attendances.first.overtime_instructor"],"id":318},{"start":{"row":27,"column":3},"end":{"row":27,"column":87},"action":"insert","lines":[" @overtime_instructor = @attendances.first.overtime_instructor if @attendances.first"]}]]},"ace":{"folds":[],"scrolltop":358.3822998046875,"scrollleft":0,"selection":{"start":{"row":31,"column":0},"end":{"row":32,"column":9},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1694772355222,"hash":"14c68f541dc4fc39c92ca1557d38c1be29abb1fe"}