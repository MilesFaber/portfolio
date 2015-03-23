<%@ page import="com.portfolioaware.k.Countries" %>



<div class="fieldcontain ${hasErrors(bean: countriesInstance, field: 'countries', 'error')} ">
	<label for="countries">
		<g:message code="countries.countries.label" default="Countries" />
		
	</label>
	<g:select name="countries" from="${com.portfolioaware.k.Country.list()}" multiple="multiple" optionKey="id" size="5" value="${countriesInstance?.countries*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: countriesInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="countries.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${countriesInstance?.name}"/>

</div>

