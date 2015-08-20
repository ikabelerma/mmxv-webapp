<%@ page import="mmxv.webapp.Nomination" %>



<div class="fieldcontain ${hasErrors(bean: nominationInstance, field: 'criteria', 'error')} required">
	<label for="criteria">
		<g:message code="nomination.criteria.label" default="Criteria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="criteria" name="criteria.id" from="${mmxv.webapp.Criteria.list()}" optionKey="id" required="" value="${nominationInstance?.criteria?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nominationInstance, field: 'justification', 'error')} required">
	<label for="justification">
		<g:message code="nomination.justification.label" default="Justification" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="justification" cols="40" rows="5" maxlength="1000" required="" value="${nominationInstance?.justification}"/>

</div>

