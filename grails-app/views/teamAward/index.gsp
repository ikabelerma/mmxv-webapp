
<%@ page import="mmxv.webapp.TeamAward" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'teamAward.label', default: 'TeamAward')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-teamAward" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-teamAward" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="pointsAwarded" title="${message(code: 'teamAward.pointsAwarded.label', default: 'Points Awarded')}" />
					
						<g:sortableColumn property="remarks" title="${message(code: 'teamAward.remarks.label', default: 'Remarks')}" />
					
						<th><g:message code="teamAward.nomination.label" default="Nomination" /></th>
					
						<th><g:message code="teamAward.nominee.label" default="Nominee" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${teamAwardInstanceList}" status="i" var="teamAwardInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${teamAwardInstance.id}">${fieldValue(bean: teamAwardInstance, field: "pointsAwarded")}</g:link></td>
					
						<td>${fieldValue(bean: teamAwardInstance, field: "remarks")}</td>
					
						<td>${fieldValue(bean: teamAwardInstance, field: "nomination")}</td>
					
						<td>${fieldValue(bean: teamAwardInstance, field: "nominee")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${teamAwardInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
