
<%@ page import="afc.Match" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'match.label', default: 'Match')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-match" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-match" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list match">
			
				<g:if test="${matchInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="match.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:fieldValue bean="${matchInstance}" field="date"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${matchInstance?.commentators}">
				<li class="fieldcontain">
					<span id="commentators-label" class="property-label"><g:message code="match.commentators.label" default="Commentators" /></span>
					
						<g:each in="${matchInstance.commentators}" var="c">
						<span class="property-value" aria-labelledby="commentators-label"><g:link controller="commentator" action="show" id="${c.commentator.id}">${c?.commentator}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.home}">
				<li class="fieldcontain">
					<span id="home-label" class="property-label"><g:message code="match.home.label" default="Home" /></span>
					
						<span class="property-value" aria-labelledby="home-label"><g:link controller="team" action="show" id="${matchInstance?.home?.id}">${matchInstance?.home?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
				
				<g:if test="${matchInstance?.away}">
				<li class="fieldcontain">
					<span id="away-label" class="property-label"><g:message code="match.away.label" default="Away" /></span>
					
						<span class="property-value" aria-labelledby="away-label"><g:link controller="team" action="show" id="${matchInstance?.away?.id}">${matchInstance?.away?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.place}">
				<li class="fieldcontain">
					<span id="place-label" class="property-label"><g:message code="match.place.label" default="Place" /></span>
					
						<span class="property-value" aria-labelledby="place-label"><g:fieldValue bean="${matchInstance}" field="place"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${matchInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="match.comments.label" default="Comments" /></span>
					
						<g:each in="${matchInstance.comments}" var="c">
						<span class="property-value" aria-labelledby="comments-label"><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:matchInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${matchInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
