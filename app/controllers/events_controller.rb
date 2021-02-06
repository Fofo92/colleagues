class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :destroy]

  def index
    @events = Event.all
    authorize @events
  end

  def show
    authorize @event
  end

  def new
    @user = User.find(params[:user_id])
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)

    authorize @event
    @event.user = current_user
    @user = User.find(params[:user_id])

    if @event.valid?
      @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
    @event.user = current_user

    authorize @event
  end

  def update
    authorize @event
    @user = current_user
    @event.update(event_params)

    if @event.valid?
      @event.update(event)
      redirect_to event_path(@event)
    else
      render :edit
    end
    redirect_to event_path(@event)
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
    params.require(:event).permit(:name, :description, :location, :starts_at, :ends_at, :price, :photo, :max_booking)
  end
end
