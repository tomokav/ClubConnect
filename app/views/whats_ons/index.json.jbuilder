json.array!(@whats_ons) do |whats_on|
  json.extract! whats_on, :id, :DayName, :EventName, :EventDesc, :EventTime, :EventLocation, :user_id_id
  json.url whats_on_url(whats_on, format: :json)
end
