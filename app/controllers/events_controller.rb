class EventsController < ApplicationController
  before_action :set_event, only: [:show, :create]

  def index
    @events = Event.all
    authorize @events
  end

  def show
    authorize @event
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.create(event_params)
    authorize @event
    @event.user = current_user
    if @event.valid?
      @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  def edit
    authorize @event
  end

  def update
    authorize @event
    @event.update(event_params)

    redirect_to event_path(@events)
  end

  def destroy
    authorize @event
    @event.destroy

    redirect_to events_path
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :description, :location)
  end
end
