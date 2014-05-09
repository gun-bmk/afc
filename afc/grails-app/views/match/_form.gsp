<%@ page import="afc.Match" %>



<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'away', 'error')} required">
	<label for="away">
		<g:message code="match.away.label" default="Away" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="away" name="away.id" from="${afc.Team.list()}" optionKey="id" required="" value="${matchInstance?.away?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'commentators', 'error')} ">
	<label for="commentators">
		<g:message code="match.commentators.label" default="Commentators" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${matchInstance?.commentators?}" var="c">
    <li><g:link controller="matchCommentator" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="matchCommentator" action="create" params="['match.id': matchInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'matchCommentator.label', default: 'MatchCommentator')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="match.comments.label" default="Comments" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${matchInstance?.comments?}" var="c">
    <li><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="comment" action="create" params="['match.id': matchInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'comment.label', default: 'Comment')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="match.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'home', 'error')} required">
	<label for="home">
		<g:message code="match.home.label" default="Home" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="home" name="home.id" from="${afc.Team.list()}" optionKey="id" required="" value="${matchInstance?.home?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'place', 'error')} required">
	<label for="place">
		<g:message code="match.place.label" default="Place" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="place" required="" value="${matchInstance?.place}"/>

</div>

