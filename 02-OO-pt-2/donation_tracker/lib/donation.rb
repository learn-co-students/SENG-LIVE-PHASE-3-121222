# Agenda:
# - Discuss mass assignment 
# - Discuss class variables and class methods
# - Discuss inheritance

require 'pry'
require_relative './helper_methods.rb'

class Donation < HelperMethods # inheriting all the methods written in this class, HelperMethods

  # class variable
  # @@all = []
  
  attr_accessor :org, :amt, :date

  # def initialize(org, amt, date) 
  #   @org = org
  #   @amt = amt
  #   @date = date
  # end

  # def initialize(attr = {}) # default arg 
  #   attr.each do |key, value|
  #     self.send("#{key}=", value) # amt= which is invoking the setter method 
  #   end

  #   @@all << self 
  # end

  # class method: behaviors that belong to the class itself, not the instance 

  # def self.all # we use self bc it makes it more reusable
  #   @@all
  # end

  def print 
    puts "**************"
    puts self.amt
    puts self.org 
    puts self.date 
    puts "**************"
  end

  # if I want to find an instance given an org name 

  def self.find_donation_by_org(org_name)
    self.all.select do |donation|
      donation.org == org_name
    end
  end

end

donation = Donation.new(amt: 100, date: 121222, org: "Feeding America")
ww = Donation.new(org: "Wounded Warriors", date: "013123", amt: 300)
binding.pry



# class method vs instance method
# .all, Donation#print

# superclass 