class BasePointsController < ApplicationController
  before_action :set_base_point, only: [:edit, :update, :destroy]
  
  def index
    @base_points = BasePoint.all
  end
  
  def new
    @base_point = BasePoint.new
  end
  
  def create
    @base_point = BasePoint.new(base_params)
    if @base_point.save
      flash[:success] = "拠点が追加されました。"
      redirect_to base_points_path
    else
      flash[:danger] = "拠点の追加に失敗しました。"
      render :index
    end
  end
  
  def edit
  end
  
  def update
    if @base_point.update(base_params)
      flash[:success] = "拠点が更新されました。"
      redirect_to base_points_url(@base_point)
    else
      flash[:danger] = "拠点の更新に失敗しました。"
      redirect_to edit_base_point_path  
    end
  end
  
  def destroy
    if @base_point.destroy
      flash[:success] = "拠点が削除されました。"
    else
      flash[:danger] = "拠点の削除に失敗しました。"
    end
    redirect_to base_points_path
  end
  
  private
  
  def set_base_point
    @base_point = BasePoint.find(params[:id])
  end
  
  def base_params
    params.require(:base_point).permit(:base_number, :base_name, :attendance_type)
  end
end
