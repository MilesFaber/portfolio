
<%@ page import="com.portfolioaware.k.Profile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profile.label', default: 'Profile')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-profile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-profile" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list profile">
			
				<g:if test="${profileInstance?.PEP}">
				<li class="fieldcontain">
					<span id="PEP-label" class="property-label"><g:message code="profile.PEP.label" default="PEP" /></span>
					
						<span class="property-value" aria-labelledby="PEP-label"><g:fieldValue bean="${profileInstance}" field="PEP"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.biography}">
				<li class="fieldcontain">
					<span id="biography-label" class="property-label"><g:message code="profile.biography.label" default="Biography" /></span>
					
						<span class="property-value" aria-labelledby="biography-label"><g:fieldValue bean="${profileInstance}" field="biography"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="profile.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${profileInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:profileInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${profileInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
