class MessageBroadcastJob < ApplicationJob
  queue_as :default

   def perform(data)
    message = Message.create! content: data
    ActionCable.server.broadcast 'room_channel', message: data
  end

end