class Document < ApplicationRecord
  belongs_to :booking, foreign_key: :booking_id, class_name: "Booking"

  validates :title, presence: true
  validates :type, presence: true, inclusion: { in: ["Etat des lieux", "Bail", "Quittance"] }
  validates :status, presence: true, inclusion: { in: ["Signature manquante", "Signé", "Emis"] }
end
