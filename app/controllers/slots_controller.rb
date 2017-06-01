class SlotsController < ApplicationController

  def create
    flat_id = params[:flat_id]
    availability_length = params[:slot][:availability_length].to_i
    slot_length = params[:slot][:length].to_i
    starts_at = Time.zone.local_to_utc(Time.parse(params[:slot][:starts_at]))

    slot_length == 0 ? nb_slots = 0 : nb_slots = (availability_length * 60 ) / slot_length

    nb_slots.times do |i|
      slot_starting_time = starts_at + ( i * slot_length * 60 )
      slot = Slot.create(starts_at: slot_starting_time, flat_id: flat_id, status: "Vacant")
    end

    authorize Slot.new

    redirect_to :back
  end

  def destroy
    @slot = Slot.find(params[:id])
    @slot.destroy

    authorize @slot

    redirect_to :back
  end

  private

  def slot_params
    params.require(:slot).permit(:starts_at)
  end
end
