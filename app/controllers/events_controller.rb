class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
    authorize @events
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
    end
  end

  def show
    authorize @event
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)

    authorize @event
    @event.user = current_user

    if @event.valid?
      @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
    @user = current_user
    authorize @event
  end

  def update
    authorize @event
    @event.user = current_user

    if @event.valid?
      @event.update(event_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  def destroy
    authorize @event
    @event.destroy

    redirect_to user_path(current_user.id)
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :description, :location, :longitude,
      :latitude, :starts_at, :ends_at, :price, :photo, :max_booking)
  end
end
