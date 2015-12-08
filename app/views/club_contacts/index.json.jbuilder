json.array!(@club_contacts) do |club_contact|
  json.extract! club_contact, :id, :ContactName, :ContactRole, :ContactMobileNum, :user_id_id
  json.url club_contact_url(club_contact, format: :json)
end
