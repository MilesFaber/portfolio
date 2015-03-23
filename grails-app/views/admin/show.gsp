
<%@ page import="com.portfolioaware.k.Admin" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'admin.label', default: 'Admin')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-admin" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-admin" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list admin">
			
				<g:if test="${adminInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="admin.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${adminInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${adminInstance?.identification}">
				<li class="fieldcontain">
					<span id="identification-label" class="property-label"><g:message code="admin.identification.label" default="Identification" /></span>
					
						<span class="property-value" aria-labelledby="identification-label"><g:fieldValue bean="${adminInstance}" field="identification"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${adminInstance?.actions}">
				<li class="fieldcontain">
					<span id="actions-label" class="property-label"><g:message code="admin.actions.label" default="Actions" /></span>
					
						<g:each in="${adminInstance.actions}" var="a">
						<span class="property-value" aria-labelledby="actions-label"><g:link controller="action" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${adminInstance?.inbox}">
				<li class="fieldcontain">
					<span id="inbox-label" class="property-label"><g:message code="admin.inbox.label" default="Inbox" /></span>
					
						<g:each in="${adminInstance.inbox}" var="i">
						<span class="property-value" aria-labelledby="inbox-label"><g:link controller="message" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${adminInstance?.outbox}">
				<li class="fieldcontain">
					<span id="outbox-label" class="property-label"><g:message code="admin.outbox.label" default="Outbox" /></span>
					
						<g:each in="${adminInstance.outbox}" var="o">
						<span class="property-value" aria-labelledby="outbox-label"><g:link controller="message" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:adminInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${adminInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
