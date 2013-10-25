json.array!(@activities) do |activity|
  json.extract! activity, :user_id, :name, :website, :content, :avatar, :address, :started_at, :finished_at, :privacy
  json.url activity_url(activity, format: :json)
end
