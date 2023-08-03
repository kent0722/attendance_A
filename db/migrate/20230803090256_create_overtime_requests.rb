class CreateOvertimeRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :overtime_requests do |t|

      t.timestamps
    end
  end
end
