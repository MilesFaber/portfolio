
<%@ page import="com.portfolioaware.k.Client" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-client" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-client" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list client">
			
				<g:if test="${clientInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="client.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${clientInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.identification}">
				<li class="fieldcontain">
					<span id="identification-label" class="property-label"><g:message code="client.identification.label" default="Identification" /></span>
					
						<span class="property-value" aria-labelledby="identification-label"><g:fieldValue bean="${clientInstance}" field="identification"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.contactInfo}">
				<li class="fieldcontain">
					<span id="contactInfo-label" class="property-label"><g:message code="client.contactInfo.label" default="Contact Info" /></span>
					
						<span class="property-value" aria-labelledby="contactInfo-label"><g:link controller="contactInfo" action="show" id="${clientInstance?.contactInfo?.id}">${clientInstance?.contactInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="client.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:link controller="country" action="show" id="${clientInstance?.country?.id}">${clientInstance?.country?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.alerts}">
				<li class="fieldcontain">
					<span id="alerts-label" class="property-label"><g:message code="client.alerts.label" default="Alerts" /></span>
					
						<g:each in="${clientInstance.alerts}" var="a">
						<span class="property-value" aria-labelledby="alerts-label"><g:link controller="alert" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.articles}">
				<li class="fieldcontain">
					<span id="articles-label" class="property-label"><g:message code="client.articles.label" default="Articles" /></span>
					
						<g:each in="${clientInstance.articles}" var="a">
						<span class="property-value" aria-labelledby="articles-label"><g:link controller="article" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.associates}">
				<li class="fieldcontain">
					<span id="associates-label" class="property-label"><g:message code="client.associates.label" default="Associates" /></span>
					
						<g:each in="${clientInstance.associates}" var="a">
						<span class="property-value" aria-labelledby="associates-label"><g:link controller="associate" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.clientSince}">
				<li class="fieldcontain">
					<span id="clientSince-label" class="property-label"><g:message code="client.clientSince.label" default="Client Since" /></span>
					
						<span class="property-value" aria-labelledby="clientSince-label"><g:fieldValue bean="${clientInstance}" field="clientSince"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="client.comments.label" default="Comments" /></span>
					
						<g:each in="${clientInstance.comments}" var="c">
						<span class="property-value" aria-labelledby="comments-label"><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.profile}">
				<li class="fieldcontain">
					<span id="profile-label" class="property-label"><g:message code="client.profile.label" default="Profile" /></span>
					
						<span class="property-value" aria-labelledby="profile-label"><g:link controller="profile" action="show" id="${clientInstance?.profile?.id}">${clientInstance?.profile?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.reviews}">
				<li class="fieldcontain">
					<span id="reviews-label" class="property-label"><g:message code="client.reviews.label" default="Reviews" /></span>
					
						<g:each in="${clientInstance.reviews}" var="r">
						<span class="property-value" aria-labelledby="reviews-label"><g:link controller="review" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.risk}">
				<li class="fieldcontain">
					<span id="risk-label" class="property-label"><g:message code="client.risk.label" default="Risk" /></span>
					
						<span class="property-value" aria-labelledby="risk-label"><g:link controller="risk" action="show" id="${clientInstance?.risk?.id}">${clientInstance?.risk?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.searchInfos}">
				<li class="fieldcontain">
					<span id="searchInfos-label" class="property-label"><g:message code="client.searchInfos.label" default="Search Infos" /></span>
					
						<g:each in="${clientInstance.searchInfos}" var="s">
						<span class="property-value" aria-labelledby="searchInfos-label"><g:link controller="searchInfo" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="client.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${clientInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:clientInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${clientInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
