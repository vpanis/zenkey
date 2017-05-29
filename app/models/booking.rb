class Booking < ApplicationRecord
  belongs_to :flat
  belongs_to :user

  validates :flat_id, :starting_date, :user_id, presence: true
  validates :status, presence: true, inclusion: { in: ["en attente", "confirmé", "annulé"] }
  alias_attribute :tenant_id, :user_id
end
