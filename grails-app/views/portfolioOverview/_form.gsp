<%@ page import="com.portfolioaware.k.pages.PortfolioOverview" %>



<div class="fieldcontain ${hasErrors(bean: portfolioOverviewInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="portfolioOverview.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${portfolioOverviewInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: portfolioOverviewInstance, field: 'portfolios', 'error')} ">
	<label for="portfolios">
		<g:message code="portfolioOverview.portfolios.label" default="Portfolios" />
		
	</label>
	<g:select name="portfolios" from="${com.portfolioaware.k.Portfolio.list()}" multiple="multiple" optionKey="id" size="5" value="${portfolioOverviewInstance?.portfolios*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: portfolioOverviewInstance, field: 'toString', 'error')} required">
	<label for="toString">
		<g:message code="portfolioOverview.toString.label" default="To String" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="toString" required="" value="${portfolioOverviewInstance?.toString}"/>

</div>

