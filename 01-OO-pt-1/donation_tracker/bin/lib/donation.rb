# create class 

require "pry"

class Donation 

#  when i create a new instance, I want t orun a series of rules upon the creation of that instance

def initialize  
#  special ruby method, this method gets invoked
# instance variable
 @amount 
 @date 
 @organization
end

# debugging tool. pauses where its been defined
binding.pry 

# inastance: a product of the class we create using a special method .new