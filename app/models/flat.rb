class Flat < ApplicationRecord
  belongs_to :user
  has_many :availabilities, dependent: :destroy
  has_many :bookings, dependent: :destroy

  has_attachments :photos, maximum: 10

  validates :title, :description,  :availability_date, :min_duration, :address, :subway, :furnished, :size, :rent, :rental_costs, :floor, :rooms, :bedrooms, :user_id, :income_ratio, :has_warrantor, :warrantor_income_ratio, :deposit, presence: true
  validates :status, presence: true, inclusion: { in: ["libre","occupé"] }
  validates :rental_type, presence: true, inclusion: { in: ["Location", "Colocation"] }
  validates_inclusion_of :is_address_public, :balcony, :elevator, :separate_bathroom, :parking, :in => [true, false]

  alias_attribute :landlord_id, :user_id
end
