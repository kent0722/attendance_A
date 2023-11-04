class AttendancesController < ApplicationController
  before_action :set_user, only: [:edit_one_month, :update_one_month, :edit_overtime_req, :update_overtime_req, :overtime_req_confirm, :overtime_req_process]
  before_action :logged_in_user, only: [:update, :edit_one_month, :update_one_month, :edit_overtime_req, :update_overtime_req, :overtime_req_confirm, :overtime_req_process]
  before_action :superior_users, only: [:edit_one_month, :edit_overtime_req, :overtime_req_confirm]
  before_action :admin_or_correct_user, only: [:update, :edit_one_month, :update_one_month, :edit_overtime_req, :update_overtime_req, :overtime_req_confirm, :overtime_req_process]
  before_action :set_one_month, only: :edit_one_month
  
  UPDATE_ERROR_MSG = "勤怠登録に失敗しました。やり直してください。"

  def update
    @user = User.find(params[:user_id])
    @attendance = Attendance.find(params[:id])
    # 出勤時間が未登録であることを判定します。
    if @attendance.started_at.nil?
      if @attendance.update(started_at: Time.current.change(sec: 0))
        flash[:info] = "おはようございます！"
      else
        flash[:danger] = UPDATE_ERROR_MSG
      end
    elsif @attendance.finished_at.nil?
      if @attendance.update(finished_at: Time.current.change(sec: 0))
        flash[:info] = "お疲れ様でした。"
      else
        flash[:danger] = UPDATE_ERROR_MSG
      end
    end
    redirect_to @user
  end
  
  def edit_one_month
  end
  
  def update_one_month
    ActiveRecord::Base.transaction do # トランザクションを開始します。
      attendances_params.each do |id, item|
        unless item["started_at(4i)"].blank? || item["started_at(5i)"].blank? || item["finished_at(4i)"].blank? || item["finished_at(5i)"].blank?
          attendance = Attendance.find(id)
          attendance.update!(item)
        end
      end
    end
    flash[:success] = "1ヶ月分の勤怠情報を更新しました。"
    redirect_to user_url(date: params[:date])
  rescue ActiveRecord::RecordInvalid # トランザクションによるエラーの分岐です。
    flash[:danger] = "無効な入力データがあった為、更新をキャンセルしました。"
    redirect_to attendances_edit_one_month_user_url(date: params[:date])
  end
  
  def edit_overtime_req
    @attendance = @user.attendances.find_by(worked_on: params[:date])
  end

  def update_overtime_req
    success = true # 成功フラグを初期化
    overtime_req_params.each do |id, item|
      attendance = Attendance.find(id)
      if item["ended_at(4i)"].blank? || item["ended_at(5i)"].blank? || item["approval_status"].blank?
        success = false # 失敗した場合にフラグを設定
      else
        overtime_instructor = item["overtime_instructor"]
        attendance.update(item.merge(overtime_instructor: overtime_instructor))
      end
    end
  
    if success
      flash[:success] = "残業申請情報を送信しました。"
      redirect_to user_url
    else
      flash[:danger] = "無効な入力データがあったため、送信をキャンセルしました。"
      redirect_to user_url
    end
  end

  def overtime_req_confirm
    @attendances = Attendance.where(approval_status: ["上長A", "上長B"])
  end

  def overtime_req_process
  end
    
  private
  
  def attendances_params
    params.require(:user).permit(attendances: [:started_at, :finished_at, :note])[:attendances]
  end
  
  def overtime_req_params
    params.require(:user).permit(attendances: [:ended_at, :approved, :task_description, :approval_status])[:attendances]
  end
  
# 管理権限者、または現在ログインしているユーザーを許可します。
  def admin_or_correct_user
    @user = User.find(params[:user_id]) if @user.blank?
    unless current_user?(@user) || current_user.admin?
      flash[:danger] = "編集権限がありません。"
      redirect_to(root_url)
    end  
  end 
end