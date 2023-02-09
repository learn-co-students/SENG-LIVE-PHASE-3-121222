class DonationsController < ApplicationController

# CRUD api 

# endpoint: Read all donations 

get '/donations' do
  donations = Donation.all
  # .to_json 
  donations.to_json

  # Donation.all.to_json
end 


# fetch("http://localhost:9292/donations", {
#   body...
# })
# .then()
# .then(do something with the data)

get '/donations/total_donations' do 
  total = Donation.total_donations
  # binding.pry
  total.to_json
end 

# read a single donation 

get '/donations/:id' do
  # how do I access the id value in the path
  # params
  # => {"name"=>"1"}
  # query the db with given ID 
  donation = Donation.find(params[:id])
  # return back as JSON 
  donation.to_json
end 



# Create a donation: 

post '/donations' do
  # we need to figure out 1. how do we retrieve the body
  # params: its an empty hash that is only accessible to the controller
  # it will populate in 2 different ways:
    # 1. is when we receive a request with a body
    # 2. is when we use dynamic paths 

    # params => {"amount"=>600, "date"=>"020923", "completed"=>false}

  # associate the donation with our current user
  # donation = Donation.new(amount: params[:amount], date: params[:date], completed: params[:completed])
  # donation.donor = current_user 
  # donation.save

  donation = current_user.donations.create(params)

  # return the donation back as json 
  donation.to_json
end 


# UPDATE a donation

patch '/donations/:id' do 
#   params
# => {"amount"=>1000, "id"=>"22"}
  donation = Donation.find(params[:id])
  donation.update(amount: params[:amount])
  donation.to_json
end 


# Delete a donation 

delete '/donations/:id' do
  donation = Donation.find(params[:id])
  donation.destroy 
end 

end