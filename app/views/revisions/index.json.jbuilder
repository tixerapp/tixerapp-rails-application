json.array!(@revisions) do |revision|
  json.extract! revision, :user_id, :document_id, :content, :mimetype
  json.url revision_url(revision, format: :json)
end
