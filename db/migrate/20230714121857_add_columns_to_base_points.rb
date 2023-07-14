class AddIndexesToBasePoints < ActiveRecord::Migration[5.1]
  def change
    add_index :base_points, :base_number
    add_index :base_points, :base_name
    add_index :base_points, :attendance_type
  end
end