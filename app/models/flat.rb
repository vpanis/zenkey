class Flat < ApplicationRecord
  belongs_to :user
  has_many :availabilities, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :title, :description,  :availability_date, :min_duration, :address, :is_address_public, :subway, :furnished, :size, :rent, :rental_costs, :floor, :rooms, :bedrooms, :balcony, :elevator, :separate_bathroom, :parking, :user_id, :income_ratio, :has_warrantor, :warrantor_income_ratio, :deposit, presence: true
  validates :status, presence: true, inclusion: { in: ["libre","occupé"] }
  validates :rental_type, presence: true, inclusion: { in: ["collaction","location"] }

  alias_attribute :landlord_id, :user_id
end
