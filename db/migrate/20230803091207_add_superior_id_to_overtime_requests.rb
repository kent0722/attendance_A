class AddSuperiorIdToOvertimeRequests < ActiveRecord::Migration[5.1]
  def change
    add_column :overtime_requests, :superior_id, :integer
  end
end
