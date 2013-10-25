json.array!(@timelines) do |timeline|
  json.extract! timeline, :user_id, :route, :content, :hidden
  json.url timeline_url(timeline, format: :json)
end
