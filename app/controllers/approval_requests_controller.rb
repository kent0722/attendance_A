class ApprovalRequestsController < ApplicationController
  
  def new
    @approval_request = ApprovalRequest.new
    # 他の必要な処理を追加
  end

  def create
    @user = User.find(params[:user_id])
    @approval_request = ApprovalRequest.new(approval_request_params)
    @approval_request.user = @user
    @approval_request.target_month = Date.current # 適切な値をセットする
    if @approval_request.save
      flash[:success] = "承認申請が送信されました。"
      redirect_to user_path(@user)
    else
      flash.now[:error] = "承認申請の送信に失敗しました。"
      render 'users/show'
    end
  end

  def show
    @approval_request = ApprovalRequest.find(params[:id])
    # 他の必要な処理を追加
  end

  def approve
    @approval_request = ApprovalRequest.find(params[:id])
    if @approval_request.update(approved: true)
      # 承認が成功した場合の処理
    else
      # 承認が失敗した場合の処理
    end
  end

  private

  def approval_request_params
    params.require(:approval_request).permit(:user_id, :approver, :target_month)
  end
end