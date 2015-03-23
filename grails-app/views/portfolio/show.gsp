
<%@ page import="com.portfolioaware.k.Portfolio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'portfolio.label', default: 'Portfolio')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-portfolio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-portfolio" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list portfolio">
			
				<g:if test="${portfolioInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="portfolio.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${portfolioInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${portfolioInstance?.identification}">
				<li class="fieldcontain">
					<span id="identification-label" class="property-label"><g:message code="portfolio.identification.label" default="Identification" /></span>
					
						<span class="property-value" aria-labelledby="identification-label"><g:fieldValue bean="${portfolioInstance}" field="identification"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${portfolioInstance?.managers}">
				<li class="fieldcontain">
					<span id="managers-label" class="property-label"><g:message code="portfolio.managers.label" default="Managers" /></span>
					
						<g:each in="${portfolioInstance.managers}" var="m">
						<span class="property-value" aria-labelledby="managers-label"><g:link controller="manager" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${portfolioInstance?.alerts}">
				<li class="fieldcontain">
					<span id="alerts-label" class="property-label"><g:message code="portfolio.alerts.label" default="Alerts" /></span>
					
						<g:each in="${portfolioInstance.alerts}" var="a">
						<span class="property-value" aria-labelledby="alerts-label"><g:link controller="alert" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${portfolioInstance?.clients}">
				<li class="fieldcontain">
					<span id="clients-label" class="property-label"><g:message code="portfolio.clients.label" default="Clients" /></span>
					
						<g:each in="${portfolioInstance.clients}" var="c">
						<span class="property-value" aria-labelledby="clients-label"><g:link controller="client" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${portfolioInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="portfolio.comments.label" default="Comments" /></span>
					
						<g:each in="${portfolioInstance.comments}" var="c">
						<span class="property-value" aria-labelledby="comments-label"><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${portfolioInstance?.risk}">
				<li class="fieldcontain">
					<span id="risk-label" class="property-label"><g:message code="portfolio.risk.label" default="Risk" /></span>
					
						<span class="property-value" aria-labelledby="risk-label"><g:link controller="risk" action="show" id="${portfolioInstance?.risk?.id}">${portfolioInstance?.risk?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:portfolioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${portfolioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
