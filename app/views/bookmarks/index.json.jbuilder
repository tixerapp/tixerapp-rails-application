json.array!(@bookmarks) do |bookmark|
  json.extract! bookmark, :user_id, :document_id, :note
  json.url bookmark_url(bookmark, format: :json)
end
