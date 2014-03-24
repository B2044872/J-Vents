<!DOCTYPE html>
<html>
        <head>
                <meta name="layout" content="main"/>
                <title>Add Event</title>
        </head>
        <body>
	<form>
	Event Name: <input type="text" name="eventName" value = "${params.eventName}"/><br/>
        Event Date: <input type="date" name="eventDate" value = "${params.eventDate}"/><br/>
	Event Venue: <input type="text" name="eventVenue" value = "${params.eventVenue}"/><br/>
        Event Description: <input type="text" name="eventDescription" value = "${params.eventDescription}"/><br/>

        <g:each in = "${jvents.Genre.list()}" var = "genre"> 
        <input name="genre" type = "checkbox" value = "${genre.id}"/> ${genre.name}
       
        </g:each>

	<input type = "submit"/>
        
	</form>
           
        </body>
</html>

