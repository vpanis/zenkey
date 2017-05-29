class Slot < ApplicationRecord
  belongs_to :availability
  belongs_to :user
  validates :availability_id, :tenant_id, :starts_at, presence: true
  validates :status, presence: true, inclusion: { in: ["vacant","booked","cancelled"] }
end

