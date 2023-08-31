module AttendancesHelper

  # 出勤時間と退勤時間を受け取り、在社時間を計算して返します。
  def working_times(start, finish)
    hours_worked = (finish - start) / 3600.0 # 秒数を時間に変換
    format("%.2f", hours_worked)
  end
end