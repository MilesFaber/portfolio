
<%@ page import="com.portfolioaware.k.Review" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'review.label', default: 'Review')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-review" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-review" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list review">
			
				<g:if test="${reviewInstance?.completionDate}">
				<li class="fieldcontain">
					<span id="completionDate-label" class="property-label"><g:message code="review.completionDate.label" default="Completion Date" /></span>
					
						<span class="property-value" aria-labelledby="completionDate-label"><g:fieldValue bean="${reviewInstance}" field="completionDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.dueDate}">
				<li class="fieldcontain">
					<span id="dueDate-label" class="property-label"><g:message code="review.dueDate.label" default="Due Date" /></span>
					
						<span class="property-value" aria-labelledby="dueDate-label"><g:fieldValue bean="${reviewInstance}" field="dueDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="review.comments.label" default="Comments" /></span>
					
						<g:each in="${reviewInstance.comments}" var="c">
						<span class="property-value" aria-labelledby="comments-label"><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.reviewer}">
				<li class="fieldcontain">
					<span id="reviewer-label" class="property-label"><g:message code="review.reviewer.label" default="Reviewer" /></span>
					
						<span class="property-value" aria-labelledby="reviewer-label"><g:link controller="manager" action="show" id="${reviewInstance?.reviewer?.id}">${reviewInstance?.reviewer?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.risk}">
				<li class="fieldcontain">
					<span id="risk-label" class="property-label"><g:message code="review.risk.label" default="Risk" /></span>
					
						<span class="property-value" aria-labelledby="risk-label"><g:link controller="risk" action="show" id="${reviewInstance?.risk?.id}">${reviewInstance?.risk?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="review.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:fieldValue bean="${reviewInstance}" field="startDate"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:reviewInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${reviewInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
