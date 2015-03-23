
<%@ page import="com.portfolioaware.k.Risk" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'risk.label', default: 'Risk')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-risk" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-risk" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="assetAmount" title="${message(code: 'risk.assetAmount.label', default: 'Asset Amount')}" />
					
						<g:sortableColumn property="probability" title="${message(code: 'risk.probability.label', default: 'Probability')}" />
					
						<g:sortableColumn property="reviewDate" title="${message(code: 'risk.reviewDate.label', default: 'Review Date')}" />
					
						<g:sortableColumn property="risk" title="${message(code: 'risk.risk.label', default: 'Risk')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${riskInstanceList}" status="i" var="riskInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${riskInstance.id}">${fieldValue(bean: riskInstance, field: "assetAmount")}</g:link></td>
					
						<td>${fieldValue(bean: riskInstance, field: "probability")}</td>
					
						<td>${fieldValue(bean: riskInstance, field: "reviewDate")}</td>
					
						<td>${fieldValue(bean: riskInstance, field: "risk")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${riskInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
