
<%@ page import="mmxv.webapp.Nomination" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'nomination.label', default: 'Nomination')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-nomination" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-nomination" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list nomination">
			
				<g:if test="${nominationInstance?.criteria}">
				<li class="fieldcontain">
					<span id="criteria-label" class="property-label"><g:message code="nomination.criteria.label" default="Criteria" /></span>
					
						<span class="property-value" aria-labelledby="criteria-label"><g:link controller="criteria" action="show" id="${nominationInstance?.criteria?.id}">${nominationInstance?.criteria?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${nominationInstance?.justification}">
				<li class="fieldcontain">
					<span id="justification-label" class="property-label"><g:message code="nomination.justification.label" default="Justification" /></span>
					
						<span class="property-value" aria-labelledby="justification-label"><g:fieldValue bean="${nominationInstance}" field="justification"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:nominationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${nominationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
