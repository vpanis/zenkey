class FlatsController < ApplicationController
  before_action :set_nested_flat, only: [:dossiers]

  def dossiers
    @bookings_pending = Booking.where(status: "Pending", flat_id: params[:flat_id])
    @bookings_confirmed = Booking.where(status: "Confirmed", flat_id: params[:flat_id])
    @bookings_cancelled = Booking.where(status: "Cancelled", flat_id: params[:flat_id])
  end

  private

  def set_nested_flat
    @flat = Flat.find(params[:flat_id])
    authorize(@flat)
  end
end
