class WhatsOn
  include Mongoid::Document
  field :Day, type: String
  field :Event, type: String
  field :Description, type: String
  field :Time, type: Time
  field :Location, type: String
end
