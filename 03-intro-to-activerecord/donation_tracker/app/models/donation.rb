class Donation < ActiveRecord::Base

  # # CRUD 

  # # CREATE 

  # # .new => create a Ruby instance, NOTE it doesnt persist this data(doesnt go to the db)
  # # donation = Donation.new(amount: 100, date: "020323")

  # # # need to follow up with .save will persist it to the db
  # # donation.save

  # # .create => nice combo of .new and .save 
  # donation = Donation.create(amount: 100, date: "020323")

  # # READ 

  # # .all => which will return all records in the db table as an array
  # Donation.all
  # # retreive a specific donation 

  # # .find(id)
  # Donation.find(1)

  # # find_by(attr: value)

  # Donation.find_by(amount: 100)
  # Donation.find_by_amount(100)

  # # UPDATE 

  # # first we need to identify what we are updating hint: find the record 
  # donation = Donation.find(1)

  # # update the record 
  # donation.update(amount: 500)

  # # DESTROY 

  # # find the record we want to delete 

  # donation = Donation.find(2)

  # # delete the record using .destroy 

  # donation.destroy 


  # # destroy all records => .destroy_all

  # Donation.destroy_all 

  # def self.sum_all_amounts
  #   self.sum(:amount)
  # end
end 

