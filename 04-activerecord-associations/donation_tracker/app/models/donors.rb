class Donor < ActiveRecord::Base
  has_many :donations 

  # .donations 

  # .donations <<

  has_many :organizations, through: :donations 

  # .organizations 

  # .organizations << 
end
