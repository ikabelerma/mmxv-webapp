<%@ page import="mmxv.webapp.EmployeeAward" %>



<div class="fieldcontain ${hasErrors(bean: employeeAwardInstance, field: 'pointsAwarded', 'error')} required">
	<label for="pointsAwarded">
		<g:message code="employeeAward.pointsAwarded.label" default="Points Awarded" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pointsAwarded" type="number" value="${employeeAwardInstance.pointsAwarded}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeAwardInstance, field: 'remarks', 'error')} required">
	<label for="remarks">
		<g:message code="employeeAward.remarks.label" default="Remarks" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="remarks" required="" value="${employeeAwardInstance?.remarks}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeAwardInstance, field: 'nomination', 'error')} required">
	<label for="nomination">
		<g:message code="employeeAward.nomination.label" default="Nomination" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="nomination" name="nomination.id" from="${mmxv.webapp.EmployeeNomination.list()}" optionKey="id" required="" value="${employeeAwardInstance?.nomination?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeAwardInstance, field: 'nominee', 'error')} required">
	<label for="nominee">
		<g:message code="employeeAward.nominee.label" default="Nominee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="nominee" name="nominee.id" from="${mmxv.webapp.Employee.list()}" optionKey="id" required="" value="${employeeAwardInstance?.nominee?.id}" class="many-to-one"/>

</div>

