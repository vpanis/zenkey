class SlotPolicy < ApplicationPolicy
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

  def update?
    return true
  end

  def destroy?
    record.flat.landlord == user || user.admin
  end

  def slot_cancel?
    record.flat.landlord == user || user.admin
  end
end
