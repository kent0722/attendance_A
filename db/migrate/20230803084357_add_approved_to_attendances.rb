class AddApprovedToAttendances < ActiveRecord::Migration[5.1]
  def change
    add_column :attendances, :approved, :boolean
  end
end
