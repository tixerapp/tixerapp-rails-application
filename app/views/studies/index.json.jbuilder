json.array!(@studies) do |study|
  json.extract! study, :user_id, :organization_id, :degree, :content, :started_at, :finished_at, :is_current
  json.url study_url(study, format: :json)
end
