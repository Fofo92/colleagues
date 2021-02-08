class BookingsController < ApplicationController

  def new
    @event = Event.find(params[:event_id])
    @booking = Booking.new
    authorize @booking
    @user = current_user
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @event = Event.find(params[:event_id])
    @booking.event = @event
    @event.user = current_user
    @booking.save
    redirect_to event_path(@event)
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :event_id, :status)
  end
end
