class AddStatusToOvertimeRequests < ActiveRecord::Migration[5.1]
  def change
    add_column :overtime_requests, :status, :string
  end
end
