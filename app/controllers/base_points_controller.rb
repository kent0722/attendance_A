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
  
  private
  
  def base_params
    params.require(:base_point).permit(:base_number, :base_name, :attendance_type)
  end
end
