
<%@ page import="mmxv.webapp.EmployeeAward" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employeeAward.label', default: 'EmployeeAward')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-employeeAward" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-employeeAward" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="pointsAwarded" title="${message(code: 'employeeAward.pointsAwarded.label', default: 'Points Awarded')}" />
					
						<g:sortableColumn property="remarks" title="${message(code: 'employeeAward.remarks.label', default: 'Remarks')}" />
					
						<th><g:message code="employeeAward.nomination.label" default="Nomination" /></th>
					
						<th><g:message code="employeeAward.nominee.label" default="Nominee" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${employeeAwardInstanceList}" status="i" var="employeeAwardInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${employeeAwardInstance.id}">${fieldValue(bean: employeeAwardInstance, field: "pointsAwarded")}</g:link></td>
					
						<td>${fieldValue(bean: employeeAwardInstance, field: "remarks")}</td>
					
						<td>${fieldValue(bean: employeeAwardInstance, field: "nomination")}</td>
					
						<td>${fieldValue(bean: employeeAwardInstance, field: "nominee")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${employeeAwardInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
