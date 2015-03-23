
<%@ page import="com.portfolioaware.k.SuperUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'superUser.label', default: 'SuperUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-superUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-superUser" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'superUser.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="identification" title="${message(code: 'superUser.identification.label', default: 'Identification')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${superUserInstanceList}" status="i" var="superUserInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${superUserInstance.id}">${fieldValue(bean: superUserInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: superUserInstance, field: "identification")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${superUserInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
