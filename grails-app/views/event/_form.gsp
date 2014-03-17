<%@ page import="jvents.Event" %>



<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'eventDate', 'error')} ">
	<label for="eventDate">
		<g:message code="event.eventDate.label" default="Event Date" />
		
	</label>
	<g:textField name="eventDate" value="${eventInstance?.eventDate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'eventDescription', 'error')} ">
	<label for="eventDescription">
		<g:message code="event.eventDescription.label" default="Event Description" />
		
	</label>
	<g:textField name="eventDescription" value="${eventInstance?.eventDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'eventName', 'error')} ">
	<label for="eventName">
		<g:message code="event.eventName.label" default="Event Name" />
		
	</label>
	<g:textField name="eventName" value="${eventInstance?.eventName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'eventVenue', 'error')} ">
	<label for="eventVenue">
		<g:message code="event.eventVenue.label" default="Event Venue" />
		
	</label>
	<g:textField name="eventVenue" value="${eventInstance?.eventVenue}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'genres', 'error')} ">
	<label for="genres">
		<g:message code="event.genres.label" default="Genres" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${eventInstance?.genres?}" var="g">
    <li><g:link controller="eventGenre" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="eventGenre" action="create" params="['event.id': eventInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'eventGenre.label', default: 'EventGenre')])}</g:link>
</li>
</ul>

</div>

