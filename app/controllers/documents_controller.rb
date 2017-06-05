class DocumentsController < ApplicationController
  def show
    @document = Document.find(params[:id])
    @booking = Booking.find(@document.booking_id)
    authorize @document

    if @document.document_type == "Bail"
      respond_to do |format|
        format.pdf do
          render pdf: "bail.pdf",
                 template: "documents/bail.pdf.erb"
        end
      end
    elsif @document.document_type == "Etat des lieux"
      respond_to do |format|
        format.pdf do
          render pdf: "etat_des_lieux.pdf",
                 template: "documents/etat_des_lieux.pdf.erb"
        end
      end
    elsif @document.document_type == "Quittance"
      respond_to do |format|
        format.pdf do
          render pdf: "quittance.pdf",
                 template: "documents/quittance.pdf.erb"
        end
      end
    end
  end

  def index
    @flat = Flat.find(params[:flat_id])
    @booking = @flat.bookings.where(status: "Confirmed").last
    @documents = policy_scope(Document).where(booking_id: @booking)
  end

  def create
  end

  def update
  end

end
