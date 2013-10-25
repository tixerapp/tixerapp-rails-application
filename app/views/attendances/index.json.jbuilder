json.array!(@attendances) do |attendance|
  json.extract! attendance, :user_id, :activity_id, :rsvp
  json.url attendance_url(attendance, format: :json)
end
