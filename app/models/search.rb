class Search < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  belongs_to :tenant, foreign_key: :tenant_id, class_name: "User"

  validates :address, :tenant_id, presence: true
end
