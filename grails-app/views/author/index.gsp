
<%@ page import="com.portfolioaware.k.Author" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'author.label', default: 'Author')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-author" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-author" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="avatar" title="${message(code: 'author.avatar.label', default: 'Avatar')}" />
					
						<g:sortableColumn property="identification" title="${message(code: 'author.identification.label', default: 'Identification')}" />
					
						<g:sortableColumn property="link" title="${message(code: 'author.link.label', default: 'Link')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'author.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="userName" title="${message(code: 'author.userName.label', default: 'User Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${authorInstanceList}" status="i" var="authorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${authorInstance.id}">${fieldValue(bean: authorInstance, field: "avatar")}</g:link></td>
					
						<td>${fieldValue(bean: authorInstance, field: "identification")}</td>
					
						<td>${fieldValue(bean: authorInstance, field: "link")}</td>
					
						<td>${fieldValue(bean: authorInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: authorInstance, field: "userName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${authorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
