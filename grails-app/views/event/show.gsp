
<%@ page import="jvents.Event" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-event" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-event" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list event">
			
				<g:if test="${eventInstance?.eventDate}">
				<li class="fieldcontain">
					<span id="eventDate-label" class="property-label"><g:message code="event.eventDate.label" default="Event Date" /></span>
					
						<span class="property-value" aria-labelledby="eventDate-label"><g:fieldValue bean="${eventInstance}" field="eventDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.eventDescription}">
				<li class="fieldcontain">
					<span id="eventDescription-label" class="property-label"><g:message code="event.eventDescription.label" default="Event Description" /></span>
					
						<span class="property-value" aria-labelledby="eventDescription-label"><g:fieldValue bean="${eventInstance}" field="eventDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.eventName}">
				<li class="fieldcontain">
					<span id="eventName-label" class="property-label"><g:message code="event.eventName.label" default="Event Name" /></span>
					
						<span class="property-value" aria-labelledby="eventName-label"><g:fieldValue bean="${eventInstance}" field="eventName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.eventVenue}">
				<li class="fieldcontain">
					<span id="eventVenue-label" class="property-label"><g:message code="event.eventVenue.label" default="Event Venue" /></span>
					
						<span class="property-value" aria-labelledby="eventVenue-label"><g:fieldValue bean="${eventInstance}" field="eventVenue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.genres}">
				<li class="fieldcontain">
					<span id="genres-label" class="property-label"><g:message code="event.genres.label" default="Genres" /></span>
					
						<g:each in="${eventInstance.genres}" var="g">
						<span class="property-value" aria-labelledby="genres-label"><g:link controller="eventGenre" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:eventInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${eventInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
