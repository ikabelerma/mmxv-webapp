<%@ page import="mmxv.webapp.Employee" %>



<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'uid', 'error')} required">
	<label for="uid">
		<g:message code="employee.uid.label" default="Uid" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="uid" required="" value="${employeeInstance?.uid}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="employee.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${employeeInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="employee.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${employeeInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'emailAddress', 'error')} required">
	<label for="emailAddress">
		<g:message code="employee.emailAddress.label" default="Email Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="emailAddress" required="" value="${employeeInstance?.emailAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'mobileNumber', 'error')} required">
	<label for="mobileNumber">
		<g:message code="employee.mobileNumber.label" default="Mobile Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobileNumber" required="" value="${employeeInstance?.mobileNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'isApprover', 'error')} ">
	<label for="isApprover">
		<g:message code="employee.isApprover.label" default="Is Approver" />
		
	</label>
	<g:checkBox name="isApprover" value="${employeeInstance?.isApprover}" />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'awards', 'error')} ">
	<label for="awards">
		<g:message code="employee.awards.label" default="Awards" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${employeeInstance?.awards?}" var="a">
    <li><g:link controller="award" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="award" action="create" params="['employee.id': employeeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'award.label', default: 'Award')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'nominations', 'error')} ">
	<label for="nominations">
		<g:message code="employee.nominations.label" default="Nominations" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${employeeInstance?.nominations?}" var="n">
    <li><g:link controller="nomination" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="nomination" action="create" params="['employee.id': employeeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'nomination.label', default: 'Nomination')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'teams', 'error')} ">
	<label for="teams">
		<g:message code="employee.teams.label" default="Teams" />
		
	</label>
	

</div>

