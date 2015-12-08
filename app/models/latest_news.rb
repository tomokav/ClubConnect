class LatestNews
  include Mongoid::Document
  field :Title, type: String
  field :Content, type: String
  field :Date, type: Date
  field :Time, type: Time
end
