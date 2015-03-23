<%@ page import="com.portfolioaware.k.Admin" %>



<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="admin.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="80" required="" value="${adminInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'identification', 'error')} required">
	<label for="identification">
		<g:message code="admin.identification.label" default="Identification" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="identification" maxlength="80" required="" value="${adminInstance?.identification}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'actions', 'error')} ">
	<label for="actions">
		<g:message code="admin.actions.label" default="Actions" />
		
	</label>
	<g:select name="actions" from="${com.portfolioaware.k.Action.list()}" multiple="multiple" optionKey="id" size="5" value="${adminInstance?.actions*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'inbox', 'error')} ">
	<label for="inbox">
		<g:message code="admin.inbox.label" default="Inbox" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${adminInstance?.inbox?}" var="i">
    <li><g:link controller="message" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="message" action="create" params="['admin.id': adminInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'message.label', default: 'Message')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'outbox', 'error')} ">
	<label for="outbox">
		<g:message code="admin.outbox.label" default="Outbox" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${adminInstance?.outbox?}" var="o">
    <li><g:link controller="message" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="message" action="create" params="['admin.id': adminInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'message.label', default: 'Message')])}</g:link>
</li>
</ul>


</div>

