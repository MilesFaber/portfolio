
<%@ page import="com.portfolioaware.k.Article" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'article.label', default: 'Article')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-article" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-article" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list article">
			
				<g:if test="${articleInstance?.filePath}">
				<li class="fieldcontain">
					<span id="filePath-label" class="property-label"><g:message code="article.filePath.label" default="File Path" /></span>
					
						<span class="property-value" aria-labelledby="filePath-label"><g:fieldValue bean="${articleInstance}" field="filePath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="article.comments.label" default="Comments" /></span>
					
						<g:each in="${articleInstance.comments}" var="c">
						<span class="property-value" aria-labelledby="comments-label"><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.created_at}">
				<li class="fieldcontain">
					<span id="created_at-label" class="property-label"><g:message code="article.created_at.label" default="Createdat" /></span>
					
						<span class="property-value" aria-labelledby="created_at-label"><g:fieldValue bean="${articleInstance}" field="created_at"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.identification}">
				<li class="fieldcontain">
					<span id="identification-label" class="property-label"><g:message code="article.identification.label" default="Identification" /></span>
					
						<span class="property-value" aria-labelledby="identification-label"><g:fieldValue bean="${articleInstance}" field="identification"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.link}">
				<li class="fieldcontain">
					<span id="link-label" class="property-label"><g:message code="article.link.label" default="Link" /></span>
					
						<span class="property-value" aria-labelledby="link-label"><g:fieldValue bean="${articleInstance}" field="link"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.source}">
				<li class="fieldcontain">
					<span id="source-label" class="property-label"><g:message code="article.source.label" default="Source" /></span>
					
						<span class="property-value" aria-labelledby="source-label"><g:fieldValue bean="${articleInstance}" field="source"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="article.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${articleInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:articleInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${articleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
