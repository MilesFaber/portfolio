
<%@ page import="com.portfolioaware.k.SuperUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'superUser.label', default: 'SuperUser')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-superUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-superUser" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list superUser">
			
				<g:if test="${superUserInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="superUser.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${superUserInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${superUserInstance?.identification}">
				<li class="fieldcontain">
					<span id="identification-label" class="property-label"><g:message code="superUser.identification.label" default="Identification" /></span>
					
						<span class="property-value" aria-labelledby="identification-label"><g:fieldValue bean="${superUserInstance}" field="identification"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${superUserInstance?.actions}">
				<li class="fieldcontain">
					<span id="actions-label" class="property-label"><g:message code="superUser.actions.label" default="Actions" /></span>
					
						<g:each in="${superUserInstance.actions}" var="a">
						<span class="property-value" aria-labelledby="actions-label"><g:link controller="action" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${superUserInstance?.inbox}">
				<li class="fieldcontain">
					<span id="inbox-label" class="property-label"><g:message code="superUser.inbox.label" default="Inbox" /></span>
					
						<g:each in="${superUserInstance.inbox}" var="i">
						<span class="property-value" aria-labelledby="inbox-label"><g:link controller="message" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${superUserInstance?.outbox}">
				<li class="fieldcontain">
					<span id="outbox-label" class="property-label"><g:message code="superUser.outbox.label" default="Outbox" /></span>
					
						<g:each in="${superUserInstance.outbox}" var="o">
						<span class="property-value" aria-labelledby="outbox-label"><g:link controller="message" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:superUserInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${superUserInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
