<%@ page import="com.portfolioaware.k.Article" %>



<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'filePath', 'error')} required">
	<label for="filePath">
		<g:message code="article.filePath.label" default="File Path" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="filePath" maxlength="80" required="" value="${articleInstance?.filePath}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="article.comments.label" default="Comments" />
		
	</label>
	<g:select name="comments" from="${com.portfolioaware.k.Comment.list()}" multiple="multiple" optionKey="id" size="5" value="${articleInstance?.comments*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'created_at', 'error')} required">
	<label for="created_at">
		<g:message code="article.created_at.label" default="Createdat" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="created_at" type="number" value="${articleInstance.created_at}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'identification', 'error')} required">
	<label for="identification">
		<g:message code="article.identification.label" default="Identification" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="identification" required="" value="${articleInstance?.identification}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'link', 'error')} required">
	<label for="link">
		<g:message code="article.link.label" default="Link" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="link" required="" value="${articleInstance?.link}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'source', 'error')} required">
	<label for="source">
		<g:message code="article.source.label" default="Source" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="source" required="" value="${articleInstance?.source}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="article.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type" required="" value="${articleInstance?.type}"/>

</div>

