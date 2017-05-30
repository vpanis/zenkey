class Flat < ApplicationRecord
  belongs_to :landlord, foreign_key: :landlord_id, class_name: "User"
  has_many :availabilities, dependent: :destroy
  has_many :bookings, dependent: :destroy

  has_attachments :photos, maximum: 10

  validates :title, :description,  :availability_date, :min_duration, :address, :is_address_public, :subway, :furnished, :size, :rent, :rental_costs, :floor, :rooms, :bedrooms, :income_ratio, :has_warrantor, :warrantor_income_ratio, :deposit, presence: true
  validates :status, presence: true, inclusion: { in: ["Available","Booked"] }
  validates :rental_type, presence: true, inclusion: { in: ["Colocation","Location"] }
end
