json.array!(@organizations) do |organization|
  json.extract! organization, :name, :kind, :website, :content, :address, :avatar, :lat, :lng
  json.url organization_url(organization, format: :json)
end
