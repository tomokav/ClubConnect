class ClubContact
  include Mongoid::Document
  field :ContactName, type: String
  field :ContactRole, type: String
  field :ContactMobileNum, type: String
  
  has_and_belongs_to_many :class_name => "User", :inverse_of => nil
  belongs_to :user
end
