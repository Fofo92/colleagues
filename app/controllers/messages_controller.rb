class MessagesController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @message = Message.new(message_params)
    @message.event = @event
    @message.user = current_user
    if message.save
      redirect_to event_path(@event, anchor: "message-#{@message.id}")
    else
      render "events/show"
  end

  private

  def message_params
    params.require(:message).permit(:event_id, :user_id, :content)
  end
end
