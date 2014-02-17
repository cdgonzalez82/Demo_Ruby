class DemorailsController < ApplicationController
  
  def index

  		@nombre = "Cristian Gonzalez"  		

      #Ruta del archivo
      @jsonURL = "http://localhost:3000/data2.json"
      @photo_path = "calendario.jpg"	



  end

  def show
  	# Create a calendar with an event (standard method)
		cal = Icalendar::Calendar.new
		cal.event do
		  dtstart       Date.new(2005, 04, 29)
		  dtend         Date.new(2005, 04, 28)
		  summary     "Meeting with the man."
		  description "Have a long lunch meeting and decide nothing..."
		  klass       "PRIVATE"
		end

		cal.publish
  end
end
