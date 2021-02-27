import consumer from "./consumer";

const initEventCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.eventId
    const userId = messagesContainer.dataset.userId
    console.log(userId)
    consumer.subscriptions.create({ channel: "EventChannel", id: id }, {
      received(data) {
        const authorId = data.match(/data-author-id="(\d)"/)[1]
        if (authorId != userId) data = data.replace("current_user", "")
        messagesContainer.insertAdjacentHTML('beforeend', data)
        document.getElementById("message_content").value = ""
      },
    });
  }
}

export { initEventCable };
