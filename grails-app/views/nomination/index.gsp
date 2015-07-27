
<%@ page import="mmxv.webapp.Nomination" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'nomination.label', default: 'Nomination')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-nomination" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-nomination" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="nomination.nominee.label" default="Nominee" /></th>
					
						<th><g:message code="nomination.criteria.label" default="Criteria" /></th>
					
						<g:sortableColumn property="justification" title="${message(code: 'nomination.justification.label', default: 'Justification')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${nominationInstanceList}" status="i" var="nominationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${nominationInstance.id}">${fieldValue(bean: nominationInstance, field: "nominee")}</g:link></td>
					
						<td>${fieldValue(bean: nominationInstance, field: "criteria")}</td>
					
						<td>${fieldValue(bean: nominationInstance, field: "justification")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${nominationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
