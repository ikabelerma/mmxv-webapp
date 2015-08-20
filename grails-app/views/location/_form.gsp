<%@ page import="mmxv.webapp.Location" %>



<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="location.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${locationInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'perks', 'error')} required">
	<label for="perks">
		<g:message code="location.perks.label" default="Perks" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="perks" required="" value="${locationInstance?.perks}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'pointsRequired', 'error')} required">
	<label for="pointsRequired">
		<g:message code="location.pointsRequired.label" default="Points Required" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pointsRequired" type="number" value="${locationInstance.pointsRequired}" required=""/>

</div>

