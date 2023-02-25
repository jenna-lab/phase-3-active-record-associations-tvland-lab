class Actor < ActiveRecord::Base
    has_many :characters
 has_many :shows, through: :characters

 #that returns the first and last name of an actor.
 def full_name
    "#{self.first_name} #{self.last_name}"
  end

    # that lists all of the characters that actor has alongside the show that the character is in.
  def list_roles
    self.characters.map do |chr|
        "#{chr.name} - #{chr.show.name}"
    end
  end
  
end