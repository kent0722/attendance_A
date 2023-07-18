class BasePointsController < ApplicationController
  
  def index
    @base_points = BasePoint.all
  end
  
  def new
    @base_point = BasePoint.new
  end
  
  def create
    @base = BasePoint.new(base_params)
    if @base.save
      flash[:success] = "拠点が追加されました。"
      redirect_to base_points_path
    else
      flash[:danger] = "拠点の追加に失敗しました。"
      render :index
    end
  end
  
  def destroy
    @base_point = BasePoint.find(params[:id])
    if @base_point.destroy
      flash[:success] = "拠点が削除されました。"
    else
      flash[:danger] = "拠点の削除に失敗しました。"
    end
    redirect_to base_points_path
  end
  
  private
  
  def base_params
    params.require(:base_point).permit(:base_number, :base_name, :attendance_type)
  end
end
