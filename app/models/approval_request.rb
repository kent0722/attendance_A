class ApprovalRequest < ApplicationRecord
  belongs_to :user
  attr_accessor :target_month
  attribute :approved, :boolean, default: false
  
end
