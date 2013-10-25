json.array!(@colleagues) do |colleague|
  json.extract! colleague, :follower_id, :following_id, :accepted, :follower_blocked, :following_blocked
  json.url colleague_url(colleague, format: :json)
end
