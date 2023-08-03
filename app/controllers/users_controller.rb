class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy,
                                  :edit_overtime_requests, :update_overtime_requests]
  before_action :set_users, only: [:index, :show]
  before_action :logged_in_user, only: [:index, :show, :edit, :update, :destroy, 
                                        :edit_overtime_requests, :update_overtime_requests]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: [:index, :edit, :attendance_list]
  before_action :set_one_month, only: [:show, :edit_overtime_requests]
  
  
  def index
  end
  
  def import
    if params[:file].present? && File.extname(params[:file].original_filename) == ".csv"
      flash[:success] = 'CSVファイルを読み込みました'
      User.import(params[:file])
      redirect_to users_url
    else
      flash[:danger] = 'CSVファイルを選択してください'
      redirect_to users_url
    end
  end

  def show
    @worked_sum = @attendances.where.not(started_at: nil).count
    
     # 承認待ちの申請情報を取得する
    @pending_overtime_requests = OvertimeRequest.where(status: "申請中", superior_id: current_user.id)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "新規作成に成功しました。"
      redirect_to @user
    else
      render :new
    end
  end
  
  def edit
  end
  
  def update
    if @user.update_attributes(user_params)
      flash[:success] = "ユーザー情報を更新しました。"
      redirect_to users_url
    else
      flash[:danger] = "ユーザー情報を更新できませんでした。"
      redirect_to users_url   
    end
  end
  
  def destroy
    @user.destroy
    flash[:success] = "#{@user.name}のデータを削除しました。"
    redirect_to users_url
  end
  
  
  def attendance_list
    # 本日の出社時間が保存されているユーザーを取得
    @users_with_start_time = User.where.not(start_time: nil)
  
    # 表示用のデータを作成
    @users_data = @users_with_start_time.pluck(:employee_number, :name)
  end
  
  def edit_overtime_requests
  end

 def update_overtime_requests
  @user.attendances.each do |attendance|
    attendance_params = params[:user][:attendances][attendance.id.to_s]
    if attendance_params.present?
      # attendance_paramsを使ってattendanceの情報を更新する
      attendance.update(attendance_params.permit(:approved, :note, :next_day_start_time))
    end
  end
  flash[:success] = "残業申請情報を更新しました。"
  redirect_to @user
 end


  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :affiliation, :password, 
                                 :password_confirmation, :employee_number, 
                                 :uid, :designated_work_start_time, 
                                 :designated_work_end_time,
                                 attendances: [:next_day_start_time, 
                                 :approved, :note, :attendance_type])
  end
end
