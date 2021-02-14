class BookingsController < ApplicationController

  def create
    @booking = Booking.new
    authorize @booking
    @event = Event.find(params[:event_id])
    @booking.event = @event
    @booking.user = current_user
    @booking.status = "Booked"
    if @event.bookings.count > @event.max_booking
      redirect_to event_path, notice: "too many registrations!"
    else
      @booking.save
      redirect_to event_path(@event)
    end
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "Cancelled"
    @booking.save
    redirect_to event_path(@booking.event)
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :event_id, :status)
  end
end
