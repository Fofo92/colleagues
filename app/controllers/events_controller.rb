class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @all_events = Event.all
    if params[:query].present?
      @events = []
      @events << @all_events.tagged_with("#{params[:query]}", :any => true)
      @events << @all_events.search_by_event_name(params[:query])
      @events.flatten!
    end

    authorize @all_events
  end

  def show
    authorize @event
    @booking = Booking.find_by(user: current_user, event: @event, status: "Booked")
    @booking_count = Booking.where(event: @event, status: "Booked").size
    @message = Message.new
    @markers = [{ lat: @event.latitude, lng: @event.longitude }]
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    authorize @event
    @event.user = current_user
    # @event.tag_list.add ()
       @event.hobby_list = params[:event][:hobby_list].join(", ") if params[:event][:hobby_list]
    @event.assign_attributes(event_params)
    if @event.valid?
      @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
    authorize @event
  end

  def update
    authorize @event
    @event.user = current_user
    @event.hobby_list = params[:event][:hobby_list].join(", ")
    @event.assign_attributes(event_params)
    if @event.valid?
    # raise
      @event.save
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
    params.require(:event).permit(:name, :description, :location, :longitude, :latitude, :starts_at, :ends_at, :price, :max_booking, photos: [])
  end
end
