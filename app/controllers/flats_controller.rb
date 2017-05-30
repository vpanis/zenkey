class FlatsController < ApplicationController
  before_action :set_flat, only: [:show]

  def dossiers
    @bookings_pending = Booking.where(status: "pending", flat_id: params[:flat_id])
    @bookings_confirmed = Booking.where(status: "confirmed", flat_id: params[:flat_id])
    @bookings_cancelled = Booking.where(status: "cancelled", flat_id: params[:flat_id])
  end

  def show
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
