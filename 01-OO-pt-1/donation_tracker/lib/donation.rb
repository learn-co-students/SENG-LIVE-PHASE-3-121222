# class 

require 'pry'


class Donation

  self # returns the class 

  # attr methods: macros a method that is called on the class but it generates an instance method 

  # attr_reader :amount, :date, :organization 
  # attr_writer :amount, :date, :organization

  attr_accessor :amount, :date, :organization # reader + writer 

  # when i create a new instance, I want to run a series of rules upon the creation of that instance 

  def initialize(amount, date, organization) # special ruby instance method, this method gets invoked 
    # instance variable: 
    # @amount = amount
    # @date = date
    # @organization = organization
    self.amount = amount
    self.date = date
    self.organization = organization

  end

  # instance methods: messages that we are sending specifically to the instance

  def print_attributes # we call this method on the instance
    # in here, I am in the scope of the instance
    # puts @amount
    # puts @date 
    # puts @organization

    puts self.amount
    puts self.date 
    puts self.organization

    # binding.pry
    # self => will return the instance the method was called on
  end


  # setter/getter methods 

  # writer
  # def amount=(new_amount)
  #   @amount = new_amount
  # end

  # # reader
  # def amount 
  #   @amount
  # end

end

ww = Donation.new(200, "013023", "Wounded Warriors")
fa = Donation.new(100, "013023", "Feeding America")
fa.print_attributes

# binding.pry 

# debugging tool, pauses where its been defined 


# Instance: a product of the class that we create using a special method .new

# self: going to refer to the receiver of the message, can have 2 scopes: either be the instance or the class 
