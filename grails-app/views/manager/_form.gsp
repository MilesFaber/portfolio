<%@ page import="com.portfolioaware.k.Manager" %>



<div class="fieldcontain ${hasErrors(bean: managerInstance, field: 'portfolios', 'error')} ">
	<label for="portfolios">
		<g:message code="manager.portfolios.label" default="Portfolios" />
		
	</label>
	<g:select name="portfolios" from="${com.portfolioaware.k.Portfolio.list()}" multiple="multiple" optionKey="id" size="5" value="${managerInstance?.portfolios*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: managerInstance, field: 'reviews', 'error')} ">
	<label for="reviews">
		<g:message code="manager.reviews.label" default="Reviews" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${managerInstance?.reviews?}" var="r">
    <li><g:link controller="review" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="review" action="create" params="['manager.id': managerInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'review.label', default: 'Review')])}</g:link>
</li>
</ul>


</div>

