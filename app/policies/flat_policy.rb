class FlatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    true
  end

  def new?
    create?
  end

  def visits?
    record.landlord == user || user.admin
  end

  def create?
    true
  end

  def edit?
    update?
  end

  def update?
    record.landlord == user || user.admin
  end

  def filter?
    record.landlord == user || user.admin
  end

  def dossiers?
    record.landlord == user || user.admin
  end

  def reservations?
    record.landlord == user || user.admin
  end
end
