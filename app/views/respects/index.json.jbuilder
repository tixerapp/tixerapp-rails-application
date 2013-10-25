json.array!(@respects) do |respect|
  json.extract! respect, :user_id, :colleague_id, :blocked
  json.url respect_url(respect, format: :json)
end
