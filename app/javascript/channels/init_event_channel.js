import consumer from "./consumer";

const initEventCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.eventId;
    consumer.subscriptions.create({ channel: "EventChannel", id: id }, {
      received(data) {
        console.log(data); // called when data is broadcast in the cable
        console.log(messagesContainer);
        messagesContainer.insertAdjacentHTML('beforeend', data);
        document.getElementById("message_content").value = "";
      },
    });
  }
}

export { initEventCable };
