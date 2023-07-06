class UsersController < ApplicationController
  
  def index
    @users = User.all
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
    @user = User.find(params[:id])
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
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :department, :password, :password_confirmation)
  end
end
