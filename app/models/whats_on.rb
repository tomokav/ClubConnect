class WhatsOn
  include Mongoid::Document
  field :DayName, type: String
  field :EventName, type: String
  field :EventDesc, type: String
  field :EventTime, type: Time
  field :EventLocation, type: String
  embedded_in :user_id
end
