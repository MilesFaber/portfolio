
<%@ page import="com.portfolioaware.k.pages.PortfolioOverview" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'portfolioOverview.label', default: 'PortfolioOverview')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-portfolioOverview" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-portfolioOverview" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'portfolioOverview.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="toString" title="${message(code: 'portfolioOverview.toString.label', default: 'To String')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${portfolioOverviewInstanceList}" status="i" var="portfolioOverviewInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${portfolioOverviewInstance.id}">${fieldValue(bean: portfolioOverviewInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: portfolioOverviewInstance, field: "toString")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${portfolioOverviewInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
