<%@ page import="mmxv.webapp.Criteria" %>



<div class="fieldcontain ${hasErrors(bean: criteriaInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="criteria.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${criteriaInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: criteriaInstance, field: 'maxPoints', 'error')} ">
	<label for="maxPoints">
		<g:message code="criteria.maxPoints.label" default="Max Points" />
		
	</label>
	<g:field name="maxPoints" type="number" value="${criteriaInstance.maxPoints}"/>

</div>

