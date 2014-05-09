<%@ page import="afc.Team" %>



<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="team.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${teamInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'logo', 'error')} ">
	<label for="logo">
		<g:message code="team.logo.label" default="Logo" />
		
	</label>
	<input type="file" id="logo" name="logo" />

</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'shortName', 'error')} required">
	<label for="shortName">
		<g:message code="team.shortName.label" default="Short Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="shortName" required="" value="${teamInstance?.shortName}"/>

</div>

