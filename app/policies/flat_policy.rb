class FlatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def new?
    create?
  end

  def update?
    record.landlord == user
  end

  def edit?
    update?
  end
end
