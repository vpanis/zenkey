class Booking < ApplicationRecord
  belongs_to :flat
  belongs_to :tenant, foreign_key: :tenant_id, class_name: "User"

  validates :starting_date, presence: true
  validates :status, presence: true, inclusion: { in: ["Pending", "Confirmed", "Cancelled"] }

end
