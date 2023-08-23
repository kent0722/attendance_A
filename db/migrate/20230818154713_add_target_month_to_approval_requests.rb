class AddTargetMonthToApprovalRequests < ActiveRecord::Migration[5.1]
  def change
    add_column :approval_requests, :target_month, :date
  end
end
