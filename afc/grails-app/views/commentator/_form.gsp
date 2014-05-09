<%@ page import="afc.Commentator" %>



<div class="fieldcontain ${hasErrors(bean: commentatorInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="commentator.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${commentatorInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentatorInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="commentator.image.label" default="Image" />
		
	</label>
	<input type="file" id="image" name="image" />

</div>

<div class="fieldcontain ${hasErrors(bean: commentatorInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="commentator.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${commentatorInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentatorInstance, field: 'matchs', 'error')} ">
	<label for="matchs">
		<g:message code="commentator.matchs.label" default="Matchs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${commentatorInstance?.matchs?}" var="m">
    <li><g:link controller="matchCommentator" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="matchCommentator" action="create" params="['commentator.id': commentatorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'matchCommentator.label', default: 'MatchCommentator')])}</g:link>
</li>
</ul>


</div>

