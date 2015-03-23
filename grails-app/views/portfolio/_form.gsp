<%@ page import="com.portfolioaware.k.Portfolio" %>



<div class="fieldcontain ${hasErrors(bean: portfolioInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="portfolio.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="80" required="" value="${portfolioInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: portfolioInstance, field: 'identification', 'error')} required">
	<label for="identification">
		<g:message code="portfolio.identification.label" default="Identification" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="identification" maxlength="80" required="" value="${portfolioInstance?.identification}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: portfolioInstance, field: 'managers', 'error')} ">
	<label for="managers">
		<g:message code="portfolio.managers.label" default="Managers" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: portfolioInstance, field: 'alerts', 'error')} ">
	<label for="alerts">
		<g:message code="portfolio.alerts.label" default="Alerts" />
		
	</label>
	<g:select name="alerts" from="${com.portfolioaware.k.Alert.list()}" multiple="multiple" optionKey="id" size="5" value="${portfolioInstance?.alerts*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: portfolioInstance, field: 'clients', 'error')} ">
	<label for="clients">
		<g:message code="portfolio.clients.label" default="Clients" />
		
	</label>
	<g:select name="clients" from="${com.portfolioaware.k.Client.list()}" multiple="multiple" optionKey="id" size="5" value="${portfolioInstance?.clients*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: portfolioInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="portfolio.comments.label" default="Comments" />
		
	</label>
	<g:select name="comments" from="${com.portfolioaware.k.Comment.list()}" multiple="multiple" optionKey="id" size="5" value="${portfolioInstance?.comments*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: portfolioInstance, field: 'risk', 'error')} required">
	<label for="risk">
		<g:message code="portfolio.risk.label" default="Risk" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="risk" name="risk.id" from="${com.portfolioaware.k.Risk.list()}" optionKey="id" required="" value="${portfolioInstance?.risk?.id}" class="many-to-one"/>

</div>

