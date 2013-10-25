json.array!(@answers) do |answer|
  json.extract! answer, :user_id, :question_id, :content
  json.url answer_url(answer, format: :json)
end
