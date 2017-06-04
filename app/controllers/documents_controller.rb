class DocumentsController < ApplicationController
  def show
    @booking = Booking.find(params[:booking_id])
    @document = Document.find(params[:id])
    authorize (@booking)
  end

  def create
  end

  def update
  end
end
