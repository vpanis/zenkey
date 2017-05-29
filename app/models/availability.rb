class Availability < ApplicationRecord
  belongs_to :flat
  has_many :slots, dependent: :destroy
  validates :flat_id, :start_at, :length, :slot_length, presence: true
end
