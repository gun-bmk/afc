<%@ page import="afc.Match" %>


<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'date', 'error')} ">
	<label for="date">
		<g:message code="match.date.label" default="Date" />
		
	</label>
	<g:datePicker name="date" value="${matchInstance?.date}"
              default="${new Date()}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'home', 'error')} ">
	<label for="home">
		<g:message code="match.home.label" default="Home" />
		
	</label>
	<g:select id="home" name="home.id" from="${afc.Team.list()}" optionKey="id" value="${matchInstance?.home?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'away', 'error')} ">
	<label for="away">
		<g:message code="match.away.label" default="Away" />
		
	</label>
	<g:select id="away" name="away.id" from="${afc.Team.list()}" optionKey="id" value="${matchInstance?.away?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'place', 'error')} ">
	<label for="place">
		<g:message code="match.place.label" default="Place" />
		
	</label>
	<g:textField name="place" value="${matchInstance?.place}"/>

</div>

