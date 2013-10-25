json.array!(@publications) do |publication|
  json.extract! publication, :user_id, :organization_id, :title, :content, :published_at
  json.url publication_url(publication, format: :json)
end
