<%@ page import="com.portfolioaware.k.Action" %>



<div class="fieldcontain ${hasErrors(bean: actionInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="action.comments.label" default="Comments" />
		
	</label>
	<g:select name="comments" from="${com.portfolioaware.k.Comment.list()}" multiple="multiple" optionKey="id" size="5" value="${actionInstance?.comments*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: actionInstance, field: 'completionDate', 'error')} required">
	<label for="completionDate">
		<g:message code="action.completionDate.label" default="Completion Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="completionDate" type="number" value="${actionInstance.completionDate}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: actionInstance, field: 'createDate', 'error')} required">
	<label for="createDate">
		<g:message code="action.createDate.label" default="Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="createDate" type="number" value="${actionInstance.createDate}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: actionInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="action.dueDate.label" default="Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="dueDate" type="number" value="${actionInstance.dueDate}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: actionInstance, field: 'instructions', 'error')} required">
	<label for="instructions">
		<g:message code="action.instructions.label" default="Instructions" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="instructions" required="" value="${actionInstance?.instructions}"/>

</div>

