<%@ page import="com.portfolioaware.k.ContactInfo" %>



<div class="fieldcontain ${hasErrors(bean: contactInfoInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="contactInfo.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="content" required="" value="${contactInfoInstance?.content}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactInfoInstance, field: 'toString', 'error')} required">
	<label for="toString">
		<g:message code="contactInfo.toString.label" default="To String" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="toString" required="" value="${contactInfoInstance?.toString}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactInfoInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="contactInfo.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type" required="" value="${contactInfoInstance?.type}"/>

</div>

