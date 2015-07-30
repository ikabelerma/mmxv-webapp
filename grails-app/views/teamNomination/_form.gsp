<%@ page import="mmxv.webapp.TeamNomination" %>



<div class="fieldcontain ${hasErrors(bean: teamNominationInstance, field: 'criteria', 'error')} required">
	<label for="criteria">
		<g:message code="teamNomination.criteria.label" default="Criteria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="criteria" name="criteria.id" from="${mmxv.webapp.Criteria.list()}" optionKey="id" required="" value="${teamNominationInstance?.criteria?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamNominationInstance, field: 'justification', 'error')} required">
	<label for="justification">
		<g:message code="teamNomination.justification.label" default="Justification" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="justification" cols="40" rows="5" maxlength="1000" required="" value="${teamNominationInstance?.justification}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamNominationInstance, field: 'nominee', 'error')} required">
	<label for="nominee">
		<g:message code="teamNomination.nominee.label" default="Nominee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="nominee" name="nominee.id" from="${mmxv.webapp.Team.list()}" optionKey="id" required="" value="${teamNominationInstance?.nominee?.id}" class="many-to-one"/>

</div>

