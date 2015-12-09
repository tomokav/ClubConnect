class LatestNews
  include Mongoid::Document
  field :Title, type: String
  field :Content, type: String
  field :Date, type: Date
  field :Time, type: Time

  #has_and_belongs_to_many :class_name => "User", :inverse_of => nil
  #belongs_to :user
end
