<%@ page import="jvents.EventGenre" %>



<div class="fieldcontain ${hasErrors(bean: eventGenreInstance, field: 'event', 'error')} required">
	<label for="event">
		<g:message code="eventGenre.event.label" default="Event" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="event" name="event.id" from="${jvents.Event.list()}" optionKey="id" required="" value="${eventGenreInstance?.event?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventGenreInstance, field: 'genre', 'error')} required">
	<label for="genre">
		<g:message code="eventGenre.genre.label" default="Genre" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="genre" name="genre.id" from="${jvents.Genre.list()}" optionKey="id" required="" value="${eventGenreInstance?.genre?.id}" class="many-to-one"/>
</div>

