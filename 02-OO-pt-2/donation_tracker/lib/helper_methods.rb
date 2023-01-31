class HelperMethods 

  @@all = []

  def initialize(attr = {}) # default arg 
    attr.each do |key, value|
      self.send("#{key}=", value) 
    end

    @@all << self 
  end

  def self.all # we use self bc it makes it more reusable
    @@all
  end
end