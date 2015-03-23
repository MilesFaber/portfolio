<%@ page import="com.portfolioaware.k.Risk" %>



<div class="fieldcontain ${hasErrors(bean: riskInstance, field: 'assetAmount', 'error')} required">
	<label for="assetAmount">
		<g:message code="risk.assetAmount.label" default="Asset Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="assetAmount" value="${fieldValue(bean: riskInstance, field: 'assetAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: riskInstance, field: 'probability', 'error')} required">
	<label for="probability">
		<g:message code="risk.probability.label" default="Probability" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="probability" value="${fieldValue(bean: riskInstance, field: 'probability')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: riskInstance, field: 'reviewDate', 'error')} required">
	<label for="reviewDate">
		<g:message code="risk.reviewDate.label" default="Review Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="reviewDate" type="number" value="${riskInstance.reviewDate}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: riskInstance, field: 'risk', 'error')} required">
	<label for="risk">
		<g:message code="risk.risk.label" default="Risk" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="risk" value="${fieldValue(bean: riskInstance, field: 'risk')}" required=""/>

</div>

