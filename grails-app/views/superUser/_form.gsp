<%@ page import="com.portfolioaware.k.SuperUser" %>



<div class="fieldcontain ${hasErrors(bean: superUserInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="superUser.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="80" required="" value="${superUserInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: superUserInstance, field: 'identification', 'error')} required">
	<label for="identification">
		<g:message code="superUser.identification.label" default="Identification" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="identification" maxlength="80" required="" value="${superUserInstance?.identification}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: superUserInstance, field: 'actions', 'error')} ">
	<label for="actions">
		<g:message code="superUser.actions.label" default="Actions" />
		
	</label>
	<g:select name="actions" from="${com.portfolioaware.k.Action.list()}" multiple="multiple" optionKey="id" size="5" value="${superUserInstance?.actions*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: superUserInstance, field: 'inbox', 'error')} ">
	<label for="inbox">
		<g:message code="superUser.inbox.label" default="Inbox" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${superUserInstance?.inbox?}" var="i">
    <li><g:link controller="message" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="message" action="create" params="['superUser.id': superUserInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'message.label', default: 'Message')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: superUserInstance, field: 'outbox', 'error')} ">
	<label for="outbox">
		<g:message code="superUser.outbox.label" default="Outbox" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${superUserInstance?.outbox?}" var="o">
    <li><g:link controller="message" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="message" action="create" params="['superUser.id': superUserInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'message.label', default: 'Message')])}</g:link>
</li>
</ul>


</div>

