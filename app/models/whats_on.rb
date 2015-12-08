class WhatsOn
  include Mongoid::Document
  field :Day, type: String
  field :Event, type: String
  field :Description, type: String
  field :Time, type: Time
  field :Location, type: String


   #has_and_belongs_to_many :class_name => "User", :inverse_of => nil
   #belongs_to :user
end
