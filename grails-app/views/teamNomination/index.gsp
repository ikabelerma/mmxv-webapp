
<%@ page import="mmxv.webapp.TeamNomination" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'teamNomination.label', default: 'TeamNomination')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-teamNomination" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-teamNomination" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="teamNomination.criteria.label" default="Criteria" /></th>
					
						<g:sortableColumn property="justification" title="${message(code: 'teamNomination.justification.label', default: 'Justification')}" />
					
						<th><g:message code="teamNomination.nominee.label" default="Nominee" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${teamNominationInstanceList}" status="i" var="teamNominationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${teamNominationInstance.id}">${fieldValue(bean: teamNominationInstance, field: "criteria")}</g:link></td>
					
						<td>${fieldValue(bean: teamNominationInstance, field: "justification")}</td>
					
						<td>${fieldValue(bean: teamNominationInstance, field: "nominee")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${teamNominationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
