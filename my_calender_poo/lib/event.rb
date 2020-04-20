require "pry"
require 'time'

class Event

attr_accessor :start_date, :duration, :title, :attendees
@@attendees = [] 

	def initialize (start_date, duration, title, attendees)
		@start_date = Time.parse(start_date)
		@duration = duration
		@title = title
		@attendees = attendees
	end

 	def postpone_24h
    	@start_date += 60*60*24
  	end

  	def end_date (start_date, duration)
  		@my_event.end_date = @start_date + @duration*60
  	end

#Evenement passé ou pas...
	def is_past? 
		return @start_date < Time.now
	end
#Evenement futur...
	def is_future?
		return @start_date > Time.now
	end
#Evenement arrive dans moins de 30 min...
	def is_soon?
		return @start_time < Time.now + 60*30
	end

	def to_s
		puts "Titre : rdv super important #{@title}"
		puts "Date de début : #{@start_date}"
		puts "Durée : #{@duration}"
		puts "Invités : #{@attendees}"
		
	end

end



binding.pry
puts "end of file"