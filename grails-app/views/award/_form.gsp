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
	<g:textField name="remarks" required="" value="${awardInstance?.remarks}"/>

</div>

