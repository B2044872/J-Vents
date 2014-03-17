<%@ page import="jvents.Genre" %>



<div class="fieldcontain ${hasErrors(bean: genreInstance, field: 'events', 'error')} ">
	<label for="events">
		<g:message code="genre.events.label" default="Events" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${genreInstance?.events?}" var="e">
    <li><g:link controller="eventGenre" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="eventGenre" action="create" params="['genre.id': genreInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'eventGenre.label', default: 'EventGenre')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: genreInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="genre.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${genreInstance?.name}"/>
</div>

