class Document < ApplicationRecord
  belongs_to :booking

  validates :title, presence: true
  validates :type, presence: true, inclusion: { in: ["Etat des lieux", "Bail", "Quittance"] }
  validates :status, presence: true, inclusion: { in: ["Signature manquante", "Signé", "Emis"] }
end
