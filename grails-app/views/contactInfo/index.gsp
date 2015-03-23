
<%@ page import="com.portfolioaware.k.ContactInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contactInfo.label', default: 'ContactInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-contactInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-contactInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="content" title="${message(code: 'contactInfo.content.label', default: 'Content')}" />
					
						<g:sortableColumn property="toString" title="${message(code: 'contactInfo.toString.label', default: 'To String')}" />
					
						<g:sortableColumn property="type" title="${message(code: 'contactInfo.type.label', default: 'Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${contactInfoInstanceList}" status="i" var="contactInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${contactInfoInstance.id}">${fieldValue(bean: contactInfoInstance, field: "content")}</g:link></td>
					
						<td>${fieldValue(bean: contactInfoInstance, field: "toString")}</td>
					
						<td>${fieldValue(bean: contactInfoInstance, field: "type")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${contactInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
