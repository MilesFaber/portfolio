
<%@ page import="com.portfolioaware.k.SearchInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'searchInfo.label', default: 'SearchInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-searchInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-searchInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list searchInfo">
			
				<g:if test="${searchInfoInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="searchInfo.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${searchInfoInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${searchInfoInstance?.query}">
				<li class="fieldcontain">
					<span id="query-label" class="property-label"><g:message code="searchInfo.query.label" default="Query" /></span>
					
						<span class="property-value" aria-labelledby="query-label"><g:fieldValue bean="${searchInfoInstance}" field="query"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${searchInfoInstance?.res}">
				<li class="fieldcontain">
					<span id="res-label" class="property-label"><g:message code="searchInfo.res.label" default="Res" /></span>
					
						<span class="property-value" aria-labelledby="res-label"><g:fieldValue bean="${searchInfoInstance}" field="res"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${searchInfoInstance?.urls}">
				<li class="fieldcontain">
					<span id="urls-label" class="property-label"><g:message code="searchInfo.urls.label" default="Urls" /></span>
					
						<span class="property-value" aria-labelledby="urls-label"><g:fieldValue bean="${searchInfoInstance}" field="urls"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:searchInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${searchInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
