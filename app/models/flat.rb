class Flat < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  belongs_to :user
  has_many :availabilities, dependent: :destroy
  has_many :bookings, dependent: :destroy

  has_attachments :photos, maximum: 10

  validates :title, :description,  :availability_date, :min_duration, :address, :is_address_public, :subway, :furnished, :size, :rent, :rental_costs, :floor, :rooms, :bedrooms, :balcony, :elevator, :separate_bathroom, :parking, :user_id, :income_ratio, :has_warrantor, :warrantor_income_ratio, :deposit, presence: true
  validates :status, presence: true, inclusion: { in: ["available","booked"] }
  validates :rental_type, presence: true, inclusion: { in: ["collocation","location"] }

  alias_attribute :landlord_id, :user_id
end
