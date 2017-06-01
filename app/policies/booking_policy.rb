class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def booking_confirm?
    record.flat.landlord == user || user.admin
  end

  def booking_cancel?
    record.flat.landlord == user || user.admin
  end
end
