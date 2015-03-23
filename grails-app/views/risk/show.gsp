
<%@ page import="com.portfolioaware.k.Risk" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'risk.label', default: 'Risk')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-risk" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-risk" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list risk">
			
				<g:if test="${riskInstance?.assetAmount}">
				<li class="fieldcontain">
					<span id="assetAmount-label" class="property-label"><g:message code="risk.assetAmount.label" default="Asset Amount" /></span>
					
						<span class="property-value" aria-labelledby="assetAmount-label"><g:fieldValue bean="${riskInstance}" field="assetAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${riskInstance?.probability}">
				<li class="fieldcontain">
					<span id="probability-label" class="property-label"><g:message code="risk.probability.label" default="Probability" /></span>
					
						<span class="property-value" aria-labelledby="probability-label"><g:fieldValue bean="${riskInstance}" field="probability"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${riskInstance?.reviewDate}">
				<li class="fieldcontain">
					<span id="reviewDate-label" class="property-label"><g:message code="risk.reviewDate.label" default="Review Date" /></span>
					
						<span class="property-value" aria-labelledby="reviewDate-label"><g:fieldValue bean="${riskInstance}" field="reviewDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${riskInstance?.risk}">
				<li class="fieldcontain">
					<span id="risk-label" class="property-label"><g:message code="risk.risk.label" default="Risk" /></span>
					
						<span class="property-value" aria-labelledby="risk-label"><g:fieldValue bean="${riskInstance}" field="risk"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:riskInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${riskInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
