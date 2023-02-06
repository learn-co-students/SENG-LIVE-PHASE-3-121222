class Organization < ActiveRecord::Base
  # both of these are similar in regards to what methods we get 
  has_many :donations 

  # .donations => this is going to act like a reader, but its going to return an array of all the donations associated with this organization 

  # .donations << will add a new donation to the organizations collection

  has_many :donors, through: :donations

  # .donors

  # .donors << 

end 