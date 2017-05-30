class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attachment :photo

  has_many :flats, dependent: :destroy, foreign_key: :landlord_id
  has_many :bookings, dependent: :destroy, foreign_key: :tenant_id
  has_many :slots, dependent: :destroy, foreign_key: :tenant_id
  has_many :searches, dependent: :destroy, foreign_key: :tenant_id

  validates :status, inclusion: { in: ["Etudiant", "Entrepreneur", "Sans profession", "Retraité", "Fonctionnaire", "Cadre supérieur", "Ouvrier", "Agriculteur", "Technicien", "Profession libérale"] }
end
