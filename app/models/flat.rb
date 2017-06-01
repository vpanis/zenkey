class Flat < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  belongs_to :landlord, foreign_key: :landlord_id, class_name: "User"
  has_many :slots, dependent: :destroy
  has_many :bookings, dependent: :destroy

  has_attachments :photos, maximum: 10

  validates :title, :description,  :availability_date, :min_duration, :address, :size, :rent, :rental_costs, :floor, :rooms, :bedrooms, presence: true
  validates :status, presence: true, inclusion: { in: ["Available","Busy"] }
  validates :rental_type, presence: true, inclusion: { in: ["Colocation","Location"] }
end
