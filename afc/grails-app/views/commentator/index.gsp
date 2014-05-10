
<%@ page import="afc.Commentator" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'commentator.label', default: 'Commentator')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-commentator" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-commentator" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'commentator.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="image" title="${message(code: 'commentator.image.label', default: 'Image')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'commentator.email.label', default: 'Email')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${commentatorInstanceList}" status="i" var="commentatorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${commentatorInstance.id}">${fieldValue(bean: commentatorInstance, field: "name")}</g:link></td>
					
						<td><g:domainImage bean="${commentatorInstance}" name="image"/></td>
					
						<td>${fieldValue(bean: commentatorInstance, field: "email")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${commentatorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
