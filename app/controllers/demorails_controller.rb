class DemorailsController < ApplicationController
  def index
  		@nombre = "Cristian Gonzalez"
  		@@data = File.read("C:/Users/cdgonzalez/Documents/proyectos_ruby/demo_rails/public/data.json")
  		@file = @@data
  		@event_data = JSON.parse(@file)
  		@titleG = @event_data["glossary"]["title"]
  		@title  = @event_data["glossary"]["GlossDiv"]["title"]
  		@GlossList_GlossSee = @event_data["glossary"]["GlossDiv"]["GlossList"]["GlossEntry"]["GlossSee"]
  		@ID = @event_data["glossary"]["GlossDiv"]["GlossList"]["GlossEntry"]["ID"]
  		@SortAs = @event_data["glossary"]["GlossDiv"]["GlossList"]["GlossEntry"]["SortAs"]
  		@GlossTerm = @event_data["glossary"]["GlossDiv"]["GlossList"]["GlossEntry"]["GlossTerm"]
  		@Acronym = @event_data["glossary"]["GlossDiv"]["GlossList"]["GlossEntry"]["Acronym"]
  		@Abbrev = @event_data["glossary"]["GlossDiv"]["GlossList"]["GlossEntry"]["Abbrev"]
  		@para = @event_data["glossary"]["GlossDiv"]["GlossList"]["GlossEntry"]["GlossDef"]["para"]
  		@GlossSeeAlso = @event_data["glossary"]["GlossDiv"]["GlossList"]["GlossEntry"]["GlossDef"]["GlossSeeAlso"]

      #Ruta del archivo
      @jsonURL = "http://localhost:3000/data2.json";


  		# render :json => @@data

  end
end
