<%@ page import="com.portfolioaware.k.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="80" required="" value="${userInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'identification', 'error')} required">
	<label for="identification">
		<g:message code="user.identification.label" default="Identification" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="identification" maxlength="80" required="" value="${userInstance?.identification}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'actions', 'error')} ">
	<label for="actions">
		<g:message code="user.actions.label" default="Actions" />
		
	</label>
	<g:select name="actions" from="${com.portfolioaware.k.Action.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.actions*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'inbox', 'error')} ">
	<label for="inbox">
		<g:message code="user.inbox.label" default="Inbox" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.inbox?}" var="i">
    <li><g:link controller="message" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="message" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'message.label', default: 'Message')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'outbox', 'error')} ">
	<label for="outbox">
		<g:message code="user.outbox.label" default="Outbox" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.outbox?}" var="o">
    <li><g:link controller="message" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="message" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'message.label', default: 'Message')])}</g:link>
</li>
</ul>


</div>

