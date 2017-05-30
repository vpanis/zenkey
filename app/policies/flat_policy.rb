class FlatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def dossiers?
    record.landlord == user || user.admin
  end
end
