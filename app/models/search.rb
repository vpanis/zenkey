class Search < ApplicationRecord
  belongs_to :tenant, foreign_key: :tenant_id, class_name: "User"

  validates :address, :tenant_id, presence: true
end
