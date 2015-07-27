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

