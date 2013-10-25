json.array!(@chats) do |chat|
  json.extract! chat, :sender_id, :recipient_id, :content, :read
  json.url chat_url(chat, format: :json)
end
