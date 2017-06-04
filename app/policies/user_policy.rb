class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def locataire?
    scope.where(user: user)
  end

  def recherche?
    scope.where(user: user)
  end

  def visites?
    scope.where(user: user)
  end
end
