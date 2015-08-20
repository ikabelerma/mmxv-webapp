
<%@ page import="mmxv.webapp.TeamAward" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'teamAward.label', default: 'TeamAward')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-teamAward" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-teamAward" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list teamAward">
			
				<g:if test="${teamAwardInstance?.pointsAwarded}">
				<li class="fieldcontain">
					<span id="pointsAwarded-label" class="property-label"><g:message code="teamAward.pointsAwarded.label" default="Points Awarded" /></span>
					
						<span class="property-value" aria-labelledby="pointsAwarded-label"><g:fieldValue bean="${teamAwardInstance}" field="pointsAwarded"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teamAwardInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="teamAward.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${teamAwardInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teamAwardInstance?.nomination}">
				<li class="fieldcontain">
					<span id="nomination-label" class="property-label"><g:message code="teamAward.nomination.label" default="Nomination" /></span>
					
						<span class="property-value" aria-labelledby="nomination-label"><g:link controller="teamNomination" action="show" id="${teamAwardInstance?.nomination?.id}">${teamAwardInstance?.nomination?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${teamAwardInstance?.nominee}">
				<li class="fieldcontain">
					<span id="nominee-label" class="property-label"><g:message code="teamAward.nominee.label" default="Nominee" /></span>
					
						<span class="property-value" aria-labelledby="nominee-label"><g:link controller="team" action="show" id="${teamAwardInstance?.nominee?.id}">${teamAwardInstance?.nominee?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:teamAwardInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${teamAwardInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
