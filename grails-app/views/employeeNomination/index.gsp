
<%@ page import="mmxv.webapp.EmployeeNomination" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employeeNomination.label', default: 'EmployeeNomination')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-employeeNomination" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-employeeNomination" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="employeeNomination.criteria.label" default="Criteria" /></th>
					
						<g:sortableColumn property="justification" title="${message(code: 'employeeNomination.justification.label', default: 'Justification')}" />
					
						<th><g:message code="employeeNomination.nominee.label" default="Nominee" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${employeeNominationInstanceList}" status="i" var="employeeNominationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${employeeNominationInstance.id}">${fieldValue(bean: employeeNominationInstance, field: "criteria")}</g:link></td>
					
						<td>${fieldValue(bean: employeeNominationInstance, field: "justification")}</td>
					
						<td>${fieldValue(bean: employeeNominationInstance, field: "nominee")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${employeeNominationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
