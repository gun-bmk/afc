<%@ page import="afc.Comment" %>



<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="comment.comment.label" default="Comment" />
		
	</label>
	<g:textField name="comment" value="${commentInstance?.comment}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'authorName', 'error')} ">
	<label for="authorName">
		<g:message code="comment.authorName.label" default="Author Name" />
		
	</label>
	<g:textField name="authorName" value="${commentInstance?.authorName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'likeCount', 'error')} required">
	<label for="likeCount">
		<g:message code="comment.likeCount.label" default="Like Count" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="likeCount" type="number" value="${commentInstance.likeCount}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'match', 'error')} ">
	<label for="match">
		<g:message code="comment.match.label" default="Match" />
		
	</label>
	<g:select id="match" name="match.id" from="${afc.Match.list()}" optionKey="id" value="${commentInstance?.match?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'timeStamp', 'error')} ">
	<label for="timeStamp">
		<g:message code="comment.timeStamp.label" default="Time Stamp" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'topComment', 'error')} ">
	<label for="topComment">
		<g:message code="comment.topComment.label" default="Top Comment" />
		
	</label>
	<g:checkBox name="topComment" value="${commentInstance?.topComment}" />

</div>

