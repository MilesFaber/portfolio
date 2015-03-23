<%@ page import="com.portfolioaware.k.SearchInfo" %>



<div class="fieldcontain ${hasErrors(bean: searchInfoInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="searchInfo.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${searchInfoInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: searchInfoInstance, field: 'query', 'error')} required">
	<label for="query">
		<g:message code="searchInfo.query.label" default="Query" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="query" required="" value="${searchInfoInstance?.query}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: searchInfoInstance, field: 'res', 'error')} required">
	<label for="res">
		<g:message code="searchInfo.res.label" default="Res" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="res" required="" value="${searchInfoInstance?.res}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: searchInfoInstance, field: 'urls', 'error')} ">
	<label for="urls">
		<g:message code="searchInfo.urls.label" default="Urls" />
		
	</label>
	

</div>

