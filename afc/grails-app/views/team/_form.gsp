<%@ page import="afc.Team" %>



<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="team.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${teamInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'shortName', 'error')} ">
	<label for="shortName">
		<g:message code="team.shortName.label" default="Short Name" />
		
	</label>
	<g:textField name="shortName" value="${teamInstance?.shortName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'logo', 'error')} ">
	<label for="logo">
		<g:message code="team.logo.label" default="Logo" />
		
	</label>
	<input type="file" id="logo" name="logo" />

</div>



