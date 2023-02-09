class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


  # base url: localhost:9292

  # endpoints

  # http verb /path_name do 
    # inside this block, we define what happens when a request to this endpoint comes in
  # end

  # get 
  # post 
  # patch 
  # delete 

  get '/hello_world' do 
    "Hello World!!!"
  end

  private

    def current_user # this will be our logged in user
      Donor.first
    end
end