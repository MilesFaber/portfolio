
<%@ page import="com.portfolioaware.k.Action" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'action.label', default: 'Action')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-action" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-action" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="completionDate" title="${message(code: 'action.completionDate.label', default: 'Completion Date')}" />
					
						<g:sortableColumn property="createDate" title="${message(code: 'action.createDate.label', default: 'Create Date')}" />
					
						<g:sortableColumn property="dueDate" title="${message(code: 'action.dueDate.label', default: 'Due Date')}" />
					
						<g:sortableColumn property="instructions" title="${message(code: 'action.instructions.label', default: 'Instructions')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${actionInstanceList}" status="i" var="actionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${actionInstance.id}">${fieldValue(bean: actionInstance, field: "completionDate")}</g:link></td>
					
						<td>${fieldValue(bean: actionInstance, field: "createDate")}</td>
					
						<td>${fieldValue(bean: actionInstance, field: "dueDate")}</td>
					
						<td>${fieldValue(bean: actionInstance, field: "instructions")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${actionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
