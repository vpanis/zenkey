class FlatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    true
  end

  def dossiers?
    record.landlord == user || user.admin
  end

  def create?
    true
  end

  def new?
    create?
  end

  def update?
    record.landlord == user || user.admin
  end

  def edit?
    update?
  end

  def show?
    true
  end
end
