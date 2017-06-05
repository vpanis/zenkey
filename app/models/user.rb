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

  # validates :status, inclusion: { in: ["Etudiant", "Salarié", "Indépendant", "Autre"] }
  # validates :warrantor_type, inclusion: { in: ["Famille", "Amis", "Banque", "Employeur", "Organisme", "Aucun"] }

  # validate :has_warrantor_or_not, :warrantor_income_or_not

  def has_warrantor_or_not
    if warrantor_income > 0 and has_warrantor == false
      errors.add(:has_warrantor, "can't be false")
    end
  end

  def warrantor_income_or_not
    if warrantor_income <= 0 and has_warrantor == true
      errors.add(:warrantor_income, "has to be greater than 0")
    end
  end

end
