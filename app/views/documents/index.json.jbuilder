json.array!(@documents) do |document|
  json.extract! document, :user_id, :topic_id, :level_id, :name, :kind, :content
  json.url document_url(document, format: :json)
end
