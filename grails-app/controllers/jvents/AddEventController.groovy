package jvents

class AddEventController {

    def index() { 
    println(params)
    def new_event = new Event (eventName:params.eventName,
                               eventGenre:params.eventGenre,
			       eventVenue:params.eventVenue
                               )
     new_event.save()
   }
}
