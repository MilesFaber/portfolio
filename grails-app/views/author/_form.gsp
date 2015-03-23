<%@ page import="com.portfolioaware.k.Author" %>



<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'avatar', 'error')} required">
	<label for="avatar">
		<g:message code="author.avatar.label" default="Avatar" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="avatar" required="" value="${authorInstance?.avatar}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'identification', 'error')} required">
	<label for="identification">
		<g:message code="author.identification.label" default="Identification" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="identification" required="" value="${authorInstance?.identification}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'link', 'error')} required">
	<label for="link">
		<g:message code="author.link.label" default="Link" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="link" required="" value="${authorInstance?.link}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="author.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${authorInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="author.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" required="" value="${authorInstance?.userName}"/>

</div>

