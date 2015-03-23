
<%@ page import="com.portfolioaware.k.Article" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'article.label', default: 'Article')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-article" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-article" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="filePath" title="${message(code: 'article.filePath.label', default: 'File Path')}" />
					
						<g:sortableColumn property="created_at" title="${message(code: 'article.created_at.label', default: 'Createdat')}" />
					
						<g:sortableColumn property="identification" title="${message(code: 'article.identification.label', default: 'Identification')}" />
					
						<g:sortableColumn property="link" title="${message(code: 'article.link.label', default: 'Link')}" />
					
						<g:sortableColumn property="source" title="${message(code: 'article.source.label', default: 'Source')}" />
					
						<g:sortableColumn property="type" title="${message(code: 'article.type.label', default: 'Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${articleInstanceList}" status="i" var="articleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${articleInstance.id}">${fieldValue(bean: articleInstance, field: "filePath")}</g:link></td>
					
						<td>${fieldValue(bean: articleInstance, field: "created_at")}</td>
					
						<td>${fieldValue(bean: articleInstance, field: "identification")}</td>
					
						<td>${fieldValue(bean: articleInstance, field: "link")}</td>
					
						<td>${fieldValue(bean: articleInstance, field: "source")}</td>
					
						<td>${fieldValue(bean: articleInstance, field: "type")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${articleInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
