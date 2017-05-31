class AvailabilitiesController < ApplicationController

  def create
    @availability = Availability.new(availability_params)
    @availability.flat_id = params[:flat_id]
    if @availability.length * 60 >= @availability.slot_length
      @availability.save
      # Diviser la durée du slot par la durée des visites
      nb_slots = (@availability.length * 60 ) / @availability.slot_length
      # Créer n visites
      nb_slots.times do |i|
        slot_starting_time = @availability.starts_at + ( i * @availability.slot_length * 60 )
        slot = Slot.create(availability: @availability, starts_at: slot_starting_time , status: "Vacant")
      end
    end
    authorize @availability
    redirect_to :back
  end

  def availability_params
    params.require(:availability).permit(:starts_at, :length, :slot_length)
  end
end
