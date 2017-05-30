class FlatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
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
end
