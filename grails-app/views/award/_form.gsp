<%@ page import="mmxv.webapp.Award" %>



<div class="fieldcontain ${hasErrors(bean: awardInstance, field: 'pointsAwarded', 'error')} required">
	<label for="pointsAwarded">
		<g:message code="award.pointsAwarded.label" default="Points Awarded" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pointsAwarded" type="number" value="${awardInstance.pointsAwarded}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: awardInstance, field: 'remarks', 'error')} required">
	<label for="remarks">
		<g:message code="award.remarks.label" default="Remarks" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="remarks" cols="40" rows="5" maxlength="1000" required="" value="${awardInstance?.remarks}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: awardInstance, field: 'nomination', 'error')} required">
	<label for="nomination">
		<g:message code="award.nomination.label" default="Nomination" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="nomination" name="nomination.id" from="${mmxv.webapp.Nomination.list()}" optionKey="id" required="" value="${awardInstance?.nomination?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: awardInstance, field: 'nominee', 'error')} required">
	<label for="nominee">
		<g:message code="award.nominee.label" default="Nominee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="nominee" name="nominee.id" from="${mmxv.webapp.Employee.list()}" optionKey="id" required="" value="${awardInstance?.nominee?.id}" class="many-to-one"/>

</div>

