<%@ page import="com.portfolioaware.k.Profile" %>



<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'PEP', 'error')} required">
	<label for="PEP">
		<g:message code="profile.PEP.label" default="PEP" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="PEP" required="" value="${profileInstance?.PEP}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'biography', 'error')} required">
	<label for="biography">
		<g:message code="profile.biography.label" default="Biography" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biography" required="" value="${profileInstance?.biography}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="profile.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${profileInstance?.name}"/>

</div>

