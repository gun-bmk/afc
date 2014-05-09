
<%@ page import="afc.Comment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comment.label', default: 'Comment')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-comment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-comment" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="comment" title="${message(code: 'comment.comment.label', default: 'Comment')}" />
					
						<g:sortableColumn property="authorName" title="${message(code: 'comment.authorName.label', default: 'Author Name')}" />
					
						<g:sortableColumn property="likeCount" title="${message(code: 'comment.likeCount.label', default: 'Like Count')}" />
					
						<th><g:message code="comment.match.label" default="Match" /></th>
					
						<g:sortableColumn property="timeStamp" title="${message(code: 'comment.timeStamp.label', default: 'Time Stamp')}" />
					
						<g:sortableColumn property="topComment" title="${message(code: 'comment.topComment.label', default: 'Top Comment')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${commentInstanceList}" status="i" var="commentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${commentInstance.id}">${fieldValue(bean: commentInstance, field: "comment")}</g:link></td>
					
						<td>${fieldValue(bean: commentInstance, field: "authorName")}</td>
					
						<td>${fieldValue(bean: commentInstance, field: "likeCount")}</td>
					
						<td>${fieldValue(bean: commentInstance, field: "match")}</td>
					
						<td>${fieldValue(bean: commentInstance, field: "timeStamp")}</td>
					
						<td><g:formatBoolean boolean="${commentInstance.topComment}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${commentInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
