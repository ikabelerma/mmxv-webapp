<%@ page import="mmxv.webapp.TeamAward" %>



<div class="fieldcontain ${hasErrors(bean: teamAwardInstance, field: 'pointsAwarded', 'error')} required">
	<label for="pointsAwarded">
		<g:message code="teamAward.pointsAwarded.label" default="Points Awarded" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pointsAwarded" type="number" value="${teamAwardInstance.pointsAwarded}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamAwardInstance, field: 'remarks', 'error')} required">
	<label for="remarks">
		<g:message code="teamAward.remarks.label" default="Remarks" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="remarks" required="" value="${teamAwardInstance?.remarks}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamAwardInstance, field: 'nomination', 'error')} required">
	<label for="nomination">
		<g:message code="teamAward.nomination.label" default="Nomination" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="nomination" name="nomination.id" from="${mmxv.webapp.TeamNomination.list()}" optionKey="id" required="" value="${teamAwardInstance?.nomination?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamAwardInstance, field: 'nominee', 'error')} required">
	<label for="nominee">
		<g:message code="teamAward.nominee.label" default="Nominee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="nominee" name="nominee.id" from="${mmxv.webapp.Team.list()}" optionKey="id" required="" value="${teamAwardInstance?.nominee?.id}" class="many-to-one"/>

</div>

