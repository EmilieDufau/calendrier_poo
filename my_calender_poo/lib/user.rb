require "pry"

class User

#Récoler les email et ages
  attr_accessor :email, :age #on définit une variable d'instance lisible et modifiable
  @@all_users = [] # on initialise la variable de classe

  def initialize(email_to_save, age_to_save)
    @email = email_to_save
    @age = age_to_save

    @@all_users << self
  end

 	def self.all
    return @@all_users
 	end

end

binding.pry
puts "end of file"