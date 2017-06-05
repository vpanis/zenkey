class DocumentsController < ApplicationController
  def show
    @booking = Booking.find(params[:booking_id])
    @document = Document.find(params[:id])
    authorize (@booking)
  end

  def index
    @booking = Booking.find(params[:booking_id])
    @rooms = []
    for i in 1..@booking.flat.rooms
      @rooms << "Pièce #{i}"
    end
    @documents = policy_scope(Document.all)
  end

  def create
  end

  def update
  end
end
