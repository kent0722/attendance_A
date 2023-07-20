class AddBaseNumberToBasePoints < ActiveRecord::Migration[5.1]
  def change
    add_column :base_points, :base_number, :string
    add_column :base_points, :base_name, :string
    add_column :base_points, :attendance_type, :string
  end
end