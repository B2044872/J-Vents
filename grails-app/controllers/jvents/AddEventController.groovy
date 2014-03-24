package jvents

class AddEventController {

    def index() { 
    println(params)
    def new_event = new Event (eventName:params.eventName,
                               eventDate:params.eventDate,
			       eventVenue:params.eventVenue,
                               eventDescription:params.eventDescription
                               )
     new_event.save()
   }
}
