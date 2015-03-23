<%@ page import="com.portfolioaware.k.Message" %>



<div class="fieldcontain ${hasErrors(bean: messageInstance, field: 'articles', 'error')} ">
	<label for="articles">
		<g:message code="message.articles.label" default="Articles" />
		
	</label>
	<g:select name="articles" from="${com.portfolioaware.k.Article.list()}" multiple="multiple" optionKey="id" size="5" value="${messageInstance?.articles*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: messageInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="message.comments.label" default="Comments" />
		
	</label>
	<g:select name="comments" from="${com.portfolioaware.k.Comment.list()}" multiple="multiple" optionKey="id" size="5" value="${messageInstance?.comments*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: messageInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="message.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="content" required="" value="${messageInstance?.content}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: messageInstance, field: 'receiver', 'error')} required">
	<label for="receiver">
		<g:message code="message.receiver.label" default="Receiver" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="receiver" name="receiver.id" from="${com.portfolioaware.k.User.list()}" optionKey="id" required="" value="${messageInstance?.receiver?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: messageInstance, field: 'sendDate', 'error')} required">
	<label for="sendDate">
		<g:message code="message.sendDate.label" default="Send Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sendDate" type="number" value="${messageInstance.sendDate}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: messageInstance, field: 'subject', 'error')} required">
	<label for="subject">
		<g:message code="message.subject.label" default="Subject" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subject" required="" value="${messageInstance?.subject}"/>

</div>

