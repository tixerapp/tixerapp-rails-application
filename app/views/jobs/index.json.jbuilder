json.array!(@jobs) do |job|
  json.extract! job, :user_id, :organization_id, :position, :content, :started_at, :finished_at, :is_current
  json.url job_url(job, format: :json)
end
