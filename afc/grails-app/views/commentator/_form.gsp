<%@ page import="afc.Commentator" %>



<div class="fieldcontain ${hasErrors(bean: commentatorInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="commentator.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${commentatorInstance?.name}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: commentatorInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="commentator.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${commentatorInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentatorInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="commentator.image.label" default="Image" />
		
	</label>
	<input type="file" id="image" name="image" />

</div>

