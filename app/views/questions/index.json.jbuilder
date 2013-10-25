json.array!(@questions) do |question|
  json.extract! question, :user_id, :topic_id, :name, :content, :status
  json.url question_url(question, format: :json)
end
