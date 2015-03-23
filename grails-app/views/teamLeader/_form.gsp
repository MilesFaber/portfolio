<%@ page import="com.portfolioaware.k.TeamLeader" %>



<div class="fieldcontain ${hasErrors(bean: teamLeaderInstance, field: 'portfolios', 'error')} ">
	<label for="portfolios">
		<g:message code="teamLeader.portfolios.label" default="Portfolios" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: teamLeaderInstance, field: 'reviews', 'error')} ">
	<label for="reviews">
		<g:message code="teamLeader.reviews.label" default="Reviews" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${teamLeaderInstance?.reviews?}" var="r">
    <li><g:link controller="review" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="review" action="create" params="['teamLeader.id': teamLeaderInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'review.label', default: 'Review')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: teamLeaderInstance, field: 'subordinates', 'error')} ">
	<label for="subordinates">
		<g:message code="teamLeader.subordinates.label" default="Subordinates" />
		
	</label>
	<g:select name="subordinates" from="${com.portfolioaware.k.Manager.list()}" multiple="multiple" optionKey="id" size="5" value="${teamLeaderInstance?.subordinates*.id}" class="many-to-many"/>

</div>

