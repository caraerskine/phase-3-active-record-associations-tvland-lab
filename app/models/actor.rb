class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters 

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.map do |char|
        "#{char.name} - #{char.show.name}"
    end  
  end 

 ### 
#extras are below for class methods 
#he made a seed file, so i can;t run it but its here

#   def self.alphabetical 
#     self.order(:last_name)
    #can also be done like below as a comparison 
    # self.all.sort do |a, b|
    #     a.last_name <=> b.last_name
  #define .alphabetical method that lists all actors by last name as such
#   end
# end

#   def self.most_gigs
#     self.all.sort do |a, b|
#         a.characters.count <=> b.characters.count
#   end.last 
#define method .most_gigs that returns that actor with the most characters
#comparing same data type or attribute
# end 




end