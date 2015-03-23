<%@ page import="com.portfolioaware.k.Alert" %>



<div class="fieldcontain ${hasErrors(bean: alertInstance, field: 'article', 'error')} required">
	<label for="article">
		<g:message code="alert.article.label" default="Article" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="article" name="article.id" from="${com.portfolioaware.k.Article.list()}" optionKey="id" required="" value="${alertInstance?.article?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alertInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="alert.comments.label" default="Comments" />
		
	</label>
	<g:select name="comments" from="${com.portfolioaware.k.Comment.list()}" multiple="multiple" optionKey="id" size="5" value="${alertInstance?.comments*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alertInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="alert.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="date" type="number" value="${alertInstance.date}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: alertInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="alert.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type" required="" value="${alertInstance?.type}"/>

</div>

