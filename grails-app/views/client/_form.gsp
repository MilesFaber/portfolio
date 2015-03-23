<%@ page import="com.portfolioaware.k.Client" %>



<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="client.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="80" required="" value="${clientInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'identification', 'error')} required">
	<label for="identification">
		<g:message code="client.identification.label" default="Identification" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="identification" maxlength="80" required="" value="${clientInstance?.identification}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'contactInfo', 'error')} ">
	<label for="contactInfo">
		<g:message code="client.contactInfo.label" default="Contact Info" />
		
	</label>
	<g:select id="contactInfo" name="contactInfo.id" from="${com.portfolioaware.k.ContactInfo.list()}" optionKey="id" value="${clientInstance?.contactInfo?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="client.country.label" default="Country" />
		
	</label>
	<g:select id="country" name="country.id" from="${com.portfolioaware.k.Country.list()}" optionKey="id" value="${clientInstance?.country?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'alerts', 'error')} ">
	<label for="alerts">
		<g:message code="client.alerts.label" default="Alerts" />
		
	</label>
	<g:select name="alerts" from="${com.portfolioaware.k.Alert.list()}" multiple="multiple" optionKey="id" size="5" value="${clientInstance?.alerts*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'articles', 'error')} ">
	<label for="articles">
		<g:message code="client.articles.label" default="Articles" />
		
	</label>
	<g:select name="articles" from="${com.portfolioaware.k.Article.list()}" multiple="multiple" optionKey="id" size="5" value="${clientInstance?.articles*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'associates', 'error')} ">
	<label for="associates">
		<g:message code="client.associates.label" default="Associates" />
		
	</label>
	<g:select name="associates" from="${com.portfolioaware.k.Associate.list()}" multiple="multiple" optionKey="id" size="5" value="${clientInstance?.associates*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'clientSince', 'error')} required">
	<label for="clientSince">
		<g:message code="client.clientSince.label" default="Client Since" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="clientSince" type="number" value="${clientInstance.clientSince}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="client.comments.label" default="Comments" />
		
	</label>
	<g:select name="comments" from="${com.portfolioaware.k.Comment.list()}" multiple="multiple" optionKey="id" size="5" value="${clientInstance?.comments*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'profile', 'error')} required">
	<label for="profile">
		<g:message code="client.profile.label" default="Profile" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="profile" name="profile.id" from="${com.portfolioaware.k.Profile.list()}" optionKey="id" required="" value="${clientInstance?.profile?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'reviews', 'error')} ">
	<label for="reviews">
		<g:message code="client.reviews.label" default="Reviews" />
		
	</label>
	<g:select name="reviews" from="${com.portfolioaware.k.Review.list()}" multiple="multiple" optionKey="id" size="5" value="${clientInstance?.reviews*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'risk', 'error')} required">
	<label for="risk">
		<g:message code="client.risk.label" default="Risk" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="risk" name="risk.id" from="${com.portfolioaware.k.Risk.list()}" optionKey="id" required="" value="${clientInstance?.risk?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'searchInfos', 'error')} ">
	<label for="searchInfos">
		<g:message code="client.searchInfos.label" default="Search Infos" />
		
	</label>
	<g:select name="searchInfos" from="${com.portfolioaware.k.SearchInfo.list()}" multiple="multiple" optionKey="id" size="5" value="${clientInstance?.searchInfos*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="client.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="status" required="" value="${clientInstance?.status}"/>

</div>

