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

  def update
    @slot = Slot.find(params[:id])
    authorize @slot
    @slot.status = "Booked"
    @slot.tenant = current_user
    @slot.save
    redirect_to root_path
  end

  def destroy
    @slot = Slot.find(params[:id])
    @slot.destroy

    authorize @slot

    redirect_to :back
  end

  def slot_cancel
    @slot = Slot.find(params[:slot_id])
    authorize @slot
    @flat = @slot.flat
    @slots = Slot.where(flat_id: params[:flat_id]).where.not(tenant_id: nil).select { |slot| (slot.tenant.has_warrantor == @flat.has_warrantor || @flat.has_warrantor == false) && (slot.tenant.income >= (@flat.income_ratio * (@flat.rent + @flat.rental_costs))) && (slot.tenant.warrantor_income >= (@flat.warrantor_income_ratio * (@flat.rent + @flat.rental_costs)))}
    @slots_booked = @slots.select { |slot| slot.status == "Booked" }
    @slots_cancelled = @slots.select { |slot| slot.status == "Cancelled" }
    if @slot.update(status: "Vacant", tenant_id: nil)
      respond_to do |format|
        format.html { redirect_to flat_dossiers_path(@flat) }
        format.js  # <-- will render `app/views/flats/filter.js.erb`
      end
    else
      respond_to do |format|
        format.html { redirect_to flat_dossiers_path(@flat) }
        format.js  # <-- idem
      end
    end
  end

  private

  def slot_params
    params.require(:slot).permit(:starts_at)
  end

end
