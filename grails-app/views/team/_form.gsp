<%@ page import="mmxv.webapp.Team" %>



<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="team.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${teamInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'members', 'error')} ">
	<label for="members">
		<g:message code="team.members.label" default="Members" />
		
	</label>
	<g:select name="members" from="${mmxv.webapp.Employee.list()}" multiple="multiple" optionKey="id" size="5" value="${teamInstance?.members*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'nominations', 'error')} ">
	<label for="nominations">
		<g:message code="team.nominations.label" default="Nominations" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${teamInstance?.nominations?}" var="n">
    <li><g:link controller="teamNomination" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="teamNomination" action="create" params="['team.id': teamInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'teamNomination.label', default: 'TeamNomination')])}</g:link>
</li>
</ul>


</div>

