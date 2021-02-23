class MessagesController < ApplicationController
  def index
    @messages = Message.all
    @except_current = except_current
  end

  def create
    @event = Event.find(params[:event_id])
    @message = Message.new(message_params)
    authorize @message
    @message.event = @event
    @message.user = current_user
    if @message.save
      # raise
      EventChannel.broadcast_to(
      @event,
      render_to_string(partial: "message", locals: { message: @message })
      )
      redirect_to event_path(@event, anchor: "message-#{@message.id}")
    else
      render "events/show"
    end
  end

  private

  def except_current
    User.all.where.not(id: current_user)
  end

  def message_params
    params.require(:message).permit(:event_id, :user_id, :content)
  end
end
