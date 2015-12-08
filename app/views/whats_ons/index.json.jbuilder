json.array!(@whats_ons) do |whats_on|
  json.extract! whats_on, :id, :Day, :Event, :Description, :Time, :Location
  json.url whats_on_url(whats_on, format: :json)
end
