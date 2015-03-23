<%@ page import="com.portfolioaware.k.Country" %>



<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'locale', 'error')} ">
	<label for="locale">
		<g:message code="country.locale.label" default="Locale" />
		
	</label>
	<g:textField name="locale" value="${countryInstance?.locale}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="country.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${countryInstance?.name}"/>

</div>

