package jvents

class Genre {
String name

Set events

    static constraints = {
    }

static hasMany = [events: EventGenre]
static mappedBy = [events: 'genre']


}
