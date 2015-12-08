class ClubContact
  include Mongoid::Document
  field :ContactName, type: String
  field :ContactRole, type: String
  field :ContactMobileNum, type: String
  
end
