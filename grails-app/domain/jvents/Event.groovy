package jvents

class Event {
String eventName
String eventDate
String eventVenue
String eventDescription

Set genres

    static constraints = {
    }

static hasMany = [genres: EventGenre]
static mappedBy = [genres: 'event']


}
