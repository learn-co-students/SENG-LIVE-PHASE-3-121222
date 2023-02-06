# Active Record Associations

### Lecture Take Aways

- Active Record Associations: One to Many
- Has many, belongs to
- Active Record Associations: Many to Many
- Has many, through
- Join models
- Custom instance and class methods 

### Lecture Deliverables

- Create a new class Donor and donors table
- A donor will have a name attribute
- Set up associations between Donor, Donations, and Organization
- Modify the Donations table to reflect the newly defined associations with a foreign key column.

### Association Macros 
- has_many
- belongs_to
- has many, through 

# foreign key columns are important bc they are the source of relations



Types of relationships 

has_many: one to many, this is always going to return as a collection: parent

belongs_to: one to one relationship: child 

has_many, through: many to many, join table


donor 
  has_many :donations
  has_many :organizations, through: :donations 


donations
  belongs_to :donor 
  belongs_to :organization 

organization 
  has_many :donations 
  has_many :donors, through: :donations 
