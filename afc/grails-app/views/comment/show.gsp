
<%@ page import="afc.Comment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comment.label', default: 'Comment')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-comment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-comment" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list comment">
			
				<g:if test="${commentInstance?.comment}">
				<li class="fieldcontain">
					<span id="comment-label" class="property-label"><g:message code="comment.comment.label" default="Comment" /></span>
					
						<span class="property-value" aria-labelledby="comment-label"><g:fieldValue bean="${commentInstance}" field="comment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.authorName}">
				<li class="fieldcontain">
					<span id="authorName-label" class="property-label"><g:message code="comment.authorName.label" default="Author Name" /></span>
					
						<span class="property-value" aria-labelledby="authorName-label"><g:fieldValue bean="${commentInstance}" field="authorName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.likeCount}">
				<li class="fieldcontain">
					<span id="likeCount-label" class="property-label"><g:message code="comment.likeCount.label" default="Like Count" /></span>
					
						<span class="property-value" aria-labelledby="likeCount-label"><g:fieldValue bean="${commentInstance}" field="likeCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.match}">
				<li class="fieldcontain">
					<span id="match-label" class="property-label"><g:message code="comment.match.label" default="Match" /></span>
					
						<span class="property-value" aria-labelledby="match-label"><g:link controller="match" action="show" id="${commentInstance?.match?.id}">${commentInstance?.match?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.timeStamp}">
				<li class="fieldcontain">
					<span id="timeStamp-label" class="property-label"><g:message code="comment.timeStamp.label" default="Time Stamp" /></span>
					
						<span class="property-value" aria-labelledby="timeStamp-label"><g:fieldValue bean="${commentInstance}" field="timeStamp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.topComment}">
				<li class="fieldcontain">
					<span id="topComment-label" class="property-label"><g:message code="comment.topComment.label" default="Top Comment" /></span>
					
						<span class="property-value" aria-labelledby="topComment-label"><g:formatBoolean boolean="${commentInstance?.topComment}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:commentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${commentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
