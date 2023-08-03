class AddNextDayStartTimeToAttendances < ActiveRecord::Migration[5.1]
  def change
    add_column :attendances, :next_day_start_time, :time
  end
end
