
<%@ page import="com.portfolioaware.k.ContactInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contactInfo.label', default: 'ContactInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-contactInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-contactInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list contactInfo">
			
				<g:if test="${contactInfoInstance?.content}">
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="contactInfo.content.label" default="Content" /></span>
					
						<span class="property-value" aria-labelledby="content-label"><g:fieldValue bean="${contactInfoInstance}" field="content"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInfoInstance?.toString}">
				<li class="fieldcontain">
					<span id="toString-label" class="property-label"><g:message code="contactInfo.toString.label" default="To String" /></span>
					
						<span class="property-value" aria-labelledby="toString-label"><g:fieldValue bean="${contactInfoInstance}" field="toString"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInfoInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="contactInfo.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${contactInfoInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:contactInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${contactInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
