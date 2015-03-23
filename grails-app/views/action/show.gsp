
<%@ page import="com.portfolioaware.k.Action" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'action.label', default: 'Action')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-action" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-action" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list action">
			
				<g:if test="${actionInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="action.comments.label" default="Comments" /></span>
					
						<g:each in="${actionInstance.comments}" var="c">
						<span class="property-value" aria-labelledby="comments-label"><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${actionInstance?.completionDate}">
				<li class="fieldcontain">
					<span id="completionDate-label" class="property-label"><g:message code="action.completionDate.label" default="Completion Date" /></span>
					
						<span class="property-value" aria-labelledby="completionDate-label"><g:fieldValue bean="${actionInstance}" field="completionDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${actionInstance?.createDate}">
				<li class="fieldcontain">
					<span id="createDate-label" class="property-label"><g:message code="action.createDate.label" default="Create Date" /></span>
					
						<span class="property-value" aria-labelledby="createDate-label"><g:fieldValue bean="${actionInstance}" field="createDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${actionInstance?.dueDate}">
				<li class="fieldcontain">
					<span id="dueDate-label" class="property-label"><g:message code="action.dueDate.label" default="Due Date" /></span>
					
						<span class="property-value" aria-labelledby="dueDate-label"><g:fieldValue bean="${actionInstance}" field="dueDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${actionInstance?.instructions}">
				<li class="fieldcontain">
					<span id="instructions-label" class="property-label"><g:message code="action.instructions.label" default="Instructions" /></span>
					
						<span class="property-value" aria-labelledby="instructions-label"><g:fieldValue bean="${actionInstance}" field="instructions"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:actionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${actionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
