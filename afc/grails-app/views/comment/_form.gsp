<%@ page import="afc.Comment" %>



<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'comment', 'error')} required">
	<label for="comment">
		<g:message code="comment.comment.label" default="Comment" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="comment" required="" value="${commentInstance?.comment}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'authorName', 'error')} required">
	<label for="authorName">
		<g:message code="comment.authorName.label" default="Author Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="authorName" required="" value="${commentInstance?.authorName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'like', 'error')} required">
	<label for="like">
		<g:message code="comment.like.label" default="Like" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="like" type="number" value="${commentInstance.like}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'match', 'error')} required">
	<label for="match">
		<g:message code="comment.match.label" default="Match" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="match" name="match.id" from="${afc.Match.list()}" optionKey="id" required="" value="${commentInstance?.match?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'timeStamp', 'error')} required">
	<label for="timeStamp">
		<g:message code="comment.timeStamp.label" default="Time Stamp" />
		<span class="required-indicator">*</span>
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'topComment', 'error')} ">
	<label for="topComment">
		<g:message code="comment.topComment.label" default="Top Comment" />
		
	</label>
	<g:checkBox name="topComment" value="${commentInstance?.topComment}" />

</div>

