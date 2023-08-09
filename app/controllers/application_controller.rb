class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  $days_of_the_week = %w{日 月 火 水 木 金 土}
  
  def set_user
    @user = User.find_by(id: params[:id])
    if @user.nil?
      flash[:danger] = "ユーザーが見つかりません。"
      redirect_to(root_url)
    end
  end
  
  def set_users
    @users = User.all
  end
  
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "ログインしてください。"
      redirect_to login_url
    end
  end
  
  def current_user?(user)
    user == current_user
  end
  
# アクセスしたユーザーが現在ログインしているユーザーか確認します。
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless @user == current_user
  end
  
# システム管理権限所有かどうか判定します。
  def admin_user
    redirect_to root_url unless current_user.admin?
  end
  
 # ページ出力前に1ヶ月分のデータの存在を確認・セットします。
  def set_one_month 
    @first_day = Date.current.beginning_of_month
    @last_day = @first_day.end_of_month
    one_month = [*@first_day..@last_day] # 対象の月の日数を代入します。
    # ユーザーに紐付く一ヶ月分のレコードを検索し取得します。
    @attendances = @user.attendances.where(worked_on: @first_day..@last_day)

    unless one_month.count == @attendances.count # それぞれの件数（日数）が一致するか評価します。
      ActiveRecord::Base.transaction do # トランザクションを開始します。
        # 繰り返し処理により、1ヶ月分の勤怠データを生成します。
        one_month.each { |day| @user.attendances.create!(worked_on: day) }
      end
    end

  rescue ActiveRecord::RecordInvalid # トランザクションによるエラーの分岐です。
    flash[:danger] = "ページ情報の取得に失敗しました、再アクセスしてください。"
    redirect_to root_url
  end
  
  def find_attendance_date
    target_date = params[:target_date]
    if target_date.present?
      @attendance = @user.attendances.find_by(worked_on: target_date.to_date)
    else
      # パラメータが存在しない場合や空の場合の処理を追加
      # 例えば、デフォルトの日付を設定したり、エラーメッセージを表示したりします。
      # ここでは簡単にデフォルトを現在の日付として設定しますが、適切な処理を追加してください。
      @attendance = @user.attendances.find_by(worked_on: Date.current)
    end
  end
end