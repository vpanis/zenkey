class SlotsController < ApplicationController

  def update
    @slot = Slot.find(params[:id])
    authorize @slot
    @slot.status = "Booked"
    @slot.tenant = current_user
    @slot.save
    redirect_to root_path
  end

  private

  # def slot_params
  #   params.require(:slot).permit(:status, :tenant)
  # end
end
