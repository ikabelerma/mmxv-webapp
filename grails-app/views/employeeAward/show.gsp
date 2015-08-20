
<%@ page import="mmxv.webapp.EmployeeAward" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employeeAward.label', default: 'EmployeeAward')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-employeeAward" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-employeeAward" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list employeeAward">
			
				<g:if test="${employeeAwardInstance?.pointsAwarded}">
				<li class="fieldcontain">
					<span id="pointsAwarded-label" class="property-label"><g:message code="employeeAward.pointsAwarded.label" default="Points Awarded" /></span>
					
						<span class="property-value" aria-labelledby="pointsAwarded-label"><g:fieldValue bean="${employeeAwardInstance}" field="pointsAwarded"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeAwardInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="employeeAward.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${employeeAwardInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeAwardInstance?.nomination}">
				<li class="fieldcontain">
					<span id="nomination-label" class="property-label"><g:message code="employeeAward.nomination.label" default="Nomination" /></span>
					
						<span class="property-value" aria-labelledby="nomination-label"><g:link controller="employeeNomination" action="show" id="${employeeAwardInstance?.nomination?.id}">${employeeAwardInstance?.nomination?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeAwardInstance?.nominee}">
				<li class="fieldcontain">
					<span id="nominee-label" class="property-label"><g:message code="employeeAward.nominee.label" default="Nominee" /></span>
					
						<span class="property-value" aria-labelledby="nominee-label"><g:link controller="employee" action="show" id="${employeeAwardInstance?.nominee?.id}">${employeeAwardInstance?.nominee?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:employeeAwardInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${employeeAwardInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
