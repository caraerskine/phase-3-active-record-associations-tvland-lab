class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

def actors_list
    self.actors.map do |actor|
        # "#{actor.first_name} #{actor.last_name}" totally fine but 
        #we had a function to use so we can use it DRY
        actor.full_name

    end 
    end
end

#establish many many relationship