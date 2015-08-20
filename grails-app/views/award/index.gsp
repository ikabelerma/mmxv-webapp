
<%@ page import="mmxv.webapp.Award" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'award.label', default: 'Award')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-award" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-award" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="pointsAwarded" title="${message(code: 'award.pointsAwarded.label', default: 'Points Awarded')}" />
					
						<g:sortableColumn property="remarks" title="${message(code: 'award.remarks.label', default: 'Remarks')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${awardInstanceList}" status="i" var="awardInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${awardInstance.id}">${fieldValue(bean: awardInstance, field: "pointsAwarded")}</g:link></td>
					
						<td>${fieldValue(bean: awardInstance, field: "remarks")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${awardInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
