json.array!(@recommendations) do |recommendation|
  json.extract! recommendation, :user_id, :recommender_id, :content, :accepted
  json.url recommendation_url(recommendation, format: :json)
end
