<!DOCTYPE html>
<html>
        <head>
                <meta name="layout" content="main"/>
                <title>Add Event</title>
        </head>
        <body>
	<form>
	Event Name: <input type="text" name="eventName" value = "${params.eventName}"/><br/>
	Event Genre: <input type="text" name="eventGenre" value = "${params.eventGenre}"/><br/>
	Event Venue: <input type="text" name="eventVenue" value = "${params.eventVenue}"/><br/>
	<input type = "submit"/>
	</form>
           
        </body>
</html>

