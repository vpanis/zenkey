class Slot < ApplicationRecord
  belongs_to :flat
  belongs_to :tenant, foreign_key: :tenant_id, class_name: "User"
  has_one :landlord, through: :flat
  validates :starts_at, presence: true, uniqueness:true
  validates :status, presence: true, inclusion: { in: ["Vacant","Booked","Cancelled"] }
end
