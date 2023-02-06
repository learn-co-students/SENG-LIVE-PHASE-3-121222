class Donation < ActiveRecord::Base

  # this table could act as a join table for organizations and donors 
  belongs_to :organization


  # .organization => reader, which will read the organization assocaiated with the donation it was called on

  # .organization=(org_id) => write the assocation 
  # donation.organization = Organization.find(3) # this is using AR
  # donation.organization_id = 3

  # .build_organization(organization attributes) => its instantiating a new organization and assocating the donation with it, need to follow up with a .save 

  # create_organization(org attr) => create and save a new org and associate it with the donation 

  belongs_to :donor
end 

