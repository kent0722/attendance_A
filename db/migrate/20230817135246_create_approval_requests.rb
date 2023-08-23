class CreateApprovalRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :approval_requests do |t|
      t.references :user, foreign_key: true
      t.datetime :started_at
      t.datetime :finished_at
      t.string :status
      t.string :approver

      t.timestamps
    end
  end
end
