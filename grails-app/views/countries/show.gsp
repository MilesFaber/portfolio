
<%@ page import="com.portfolioaware.k.Countries" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'countries.label', default: 'Countries')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		<script src="http://www.google.com/jsapi"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script src="http://ankane.github.io/chartkick.js/chartkick.js"></script>
		<script type="text/javascript" src="https://www.google.com/jsapi"></script>
	</head>
	<body>
		<a href="#show-countries" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-countries" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list countries">
			
				<g:if test="${countriesInstance?.countries}">
				<li class="fieldcontain">
					<span id="countries-label" class="property-label"><g:message code="countries.countries.label" default="Countries" /></span>
					
						<g:each in="${countriesInstance.countries}" var="c">
						<span class="property-value" aria-labelledby="countries-label"><g:link controller="country" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${countriesInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="countries.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${countriesInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:countriesInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${countriesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
			 <script>
                var data = [];
             </script>
			<g:each in="${countriesInstance?.countries}" var="country">
				<script>
					document.write("$ {country.name}<br>");
					document.write("${country.risk}<br>");
					data[data.length] = [ "${country.name}", 100 ];
				</script>
			</g:each>
			
			<div id="geo-graph" class="dash-graph geo">
				<div id="chart-4" style="height:300px; text-align:center, color:#999; line-height:300px; font-size:14px;">
					Loading...
				</div>
				<div id="chart-4" style="height: 300px;">
	                <script>
	                	
	               	    
	                    new Chartkick.GeoChart("chart-4", data);
	                </script>
	        	</div>
			</div>
		
	</body>
</html>
