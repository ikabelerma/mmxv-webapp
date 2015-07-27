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

