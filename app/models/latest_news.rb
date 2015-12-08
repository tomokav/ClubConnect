class LatestNews
  include Mongoid::Document
  field :NewsTitle, type: String
  field :NewsContent, type: String
  field :NewsDate, type: Date
  field :NewsTime, type: Time

end
