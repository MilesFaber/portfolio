<%@ page import="com.portfolioaware.k.Comment" %>



<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="comment.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="content" required="" value="${commentInstance?.content}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="comment.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="date" type="number" value="${commentInstance.date}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'poster', 'error')} required">
	<label for="poster">
		<g:message code="comment.poster.label" default="Poster" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="poster" name="poster.id" from="${com.portfolioaware.k.User.list()}" optionKey="id" required="" value="${commentInstance?.poster?.id}" class="many-to-one"/>

</div>

