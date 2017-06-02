class BookingsController < ApplicationController

  def booking_confirm
    @booking = Booking.find(params[:booking_id])
    authorize @booking
    @flat = @booking.flat
    @bookings = Booking.where(flat_id: params[:flat_id]).select { |booking| (booking.tenant.has_warrantor == @flat.has_warrantor || @flat.has_warrantor == false) && (booking.tenant.income >= (@flat.income_ratio * (@flat.rent + @flat.rental_costs))) && (booking.tenant.warrantor_income >= (@flat.warrantor_income_ratio * (@flat.rent + @flat.rental_costs)))}
    @bookings_pending = @bookings.select { |booking| booking.status == "Pending" }
    @bookings_confirmed = @bookings.select { |booking| booking.status == "Confirmed" }
    @bookings_cancelled = @bookings.select { |booking| booking.status == "Cancelled" }
    if @booking.update(status: "Confirmed")
      respond_to do |format|
        format.html { redirect_to flat_reservations_path(@flat) }
        format.js  # <-- will render `app/views/flats/filter.js.erb`
      end
    else
      respond_to do |format|
        format.html { redirect_to flat_reservations_path(@flat) }
        format.js  # <-- idem
      end
    end
  end

  def booking_cancel
    @booking = Booking.find(params[:booking_id])
    authorize @booking
    @flat = @booking.flat
    @bookings = Booking.where(flat_id: params[:flat_id]).select { |booking| (booking.tenant.has_warrantor == @flat.has_warrantor || @flat.has_warrantor == false) && (booking.tenant.income >= (@flat.income_ratio * (@flat.rent + @flat.rental_costs))) && (booking.tenant.warrantor_income >= (@flat.warrantor_income_ratio * (@flat.rent + @flat.rental_costs)))}
    @bookings_pending = @bookings.select { |booking| booking.status == "Pending" }
    @bookings_confirmed = @bookings.select { |booking| booking.status == "Confirmed" }
    @bookings_cancelled = @bookings.select { |booking| booking.status == "Cancelled" }
    if @booking.update(status: "Pending")
      respond_to do |format|
        format.html { redirect_to flat_reservations_path(@flat) }
        format.js  # <-- will render `app/views/flats/filter.js.erb`
      end
    else
      respond_to do |format|
        format.html { redirect_to flat_reservations_path(@flat) }
        format.js  # <-- idem
      end
    end
  end
end
