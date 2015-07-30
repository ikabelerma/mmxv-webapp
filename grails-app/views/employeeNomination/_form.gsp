<%@ page import="mmxv.webapp.EmployeeNomination" %>



<div class="fieldcontain ${hasErrors(bean: employeeNominationInstance, field: 'criteria', 'error')} required">
	<label for="criteria">
		<g:message code="employeeNomination.criteria.label" default="Criteria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="criteria" name="criteria.id" from="${mmxv.webapp.Criteria.list()}" optionKey="id" required="" value="${employeeNominationInstance?.criteria?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeNominationInstance, field: 'justification', 'error')} required">
	<label for="justification">
		<g:message code="employeeNomination.justification.label" default="Justification" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="justification" cols="40" rows="5" maxlength="1000" required="" value="${employeeNominationInstance?.justification}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeNominationInstance, field: 'nominee', 'error')} required">
	<label for="nominee">
		<g:message code="employeeNomination.nominee.label" default="Nominee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="nominee" name="nominee.id" from="${mmxv.webapp.Employee.list()}" optionKey="id" required="" value="${employeeNominationInstance?.nominee?.id}" class="many-to-one"/>

</div>

