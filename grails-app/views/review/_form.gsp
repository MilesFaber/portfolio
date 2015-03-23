<%@ page import="com.portfolioaware.k.Review" %>



<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'completionDate', 'error')} ">
	<label for="completionDate">
		<g:message code="review.completionDate.label" default="Completion Date" />
		
	</label>
	<g:field name="completionDate" type="number" value="${reviewInstance.completionDate}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'dueDate', 'error')} ">
	<label for="dueDate">
		<g:message code="review.dueDate.label" default="Due Date" />
		
	</label>
	<g:field name="dueDate" type="number" value="${reviewInstance.dueDate}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="review.comments.label" default="Comments" />
		
	</label>
	<g:select name="comments" from="${com.portfolioaware.k.Comment.list()}" multiple="multiple" optionKey="id" size="5" value="${reviewInstance?.comments*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'reviewer', 'error')} required">
	<label for="reviewer">
		<g:message code="review.reviewer.label" default="Reviewer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="reviewer" name="reviewer.id" from="${com.portfolioaware.k.Manager.list()}" optionKey="id" required="" value="${reviewInstance?.reviewer?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'risk', 'error')} required">
	<label for="risk">
		<g:message code="review.risk.label" default="Risk" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="risk" name="risk.id" from="${com.portfolioaware.k.Risk.list()}" optionKey="id" required="" value="${reviewInstance?.risk?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="review.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="startDate" type="number" value="${reviewInstance.startDate}" required=""/>

</div>

