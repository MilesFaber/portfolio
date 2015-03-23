<%@ page import="com.portfolioaware.k.pages.PortfolioOverview" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'portfolioOverview.label', default: 'PortfolioOverview')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		<script> src="/assets/application.js"></script>
		<script src="http://www.google.com/jsapi"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <!-- script src="./chartkick.js"></script -->
		<script src="http://ankane.github.io/chartkick.js/chartkick.js"></script>
		<script type="text/javascript" src="https://www.google.com/jsapi"></script>
	</head>
	<body>
		<a href="#show-portfolioOverview" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-portfolioOverview" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list portfolioOverview">
			
				<g:if test="${portfolioOverviewInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="portfolioOverview.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${portfolioOverviewInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${portfolioOverviewInstance?.portfolios}">
				<li class="fieldcontain">
					<span id="portfolios-label" class="property-label"><g:message code="portfolioOverview.portfolios.label" default="Portfolios" /></span>
					
						<g:each in="${portfolioOverviewInstance.portfolios}" var="p">
						<span class="property-value" aria-labelledby="portfolios-label"><g:link controller="portfolio" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				</ol>
			<g:form url="[resource:portfolioOverviewInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${portfolioOverviewInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>

			<script type="text/javascript">

    // Load the Visualization API and the piechart package.
    google.load('visualization', '1', {'packages':['corechart']});

    // Set a callback to run when the Google Visualization library is loaded.
    google.setOnLoadCallback(drawChart);

    // Callback that creates and populates a data table,
    // instantiates the pie chart, passes in the data and
    // draws it.
    function drawChart() {

    // Create our data table.
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Topping');
    data.addColumn('number', 'Slices');
    data.addRows([
      ['Mushrooms', 3],
      ['Onions', 1]
    ]);

    // Instantiate and draw our chart, passing in some options.
    var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
    chart.draw(data, null);
  }
  </script>

		
			

            <script>
                var data = [];
            	var countryRisks = [];
            	var countryNames = [];
            </script>
			<g:each in="${portfolioOverviewInstance.portfolios}" var="p">
				<g:each in="${p.clients}" var="c">
						
					    <script>
					    	document.write("${c.name}<br>");
					    	var countryRisk = null;
					    	countryRisk = countryRisks["${c.country.name}"];
					    	var sum;
					    	var count;
					    	if( countryRisk === undefined ) {
					    		sum = 0.;
					    		count = 0.;
					    		countryNames[countryNames.length] = "${c.country.name}";
					    	}else { 
					    		sum = countryRisk[0];
					    		count = countryRisk[1];
					    	}
					    	countryRisks["${c.country.name}"] = [sum+"${c.risk.risk}"*100., count+1];
					    	
					    	document.write((countryRisk[0]/countryRisk[1])+"<br>");
					    	data[data.length] = [ "${c.country.name}", (countryRisk[0]/countryRisk[1])*100. ];
	            		</script>	
				</g:each>
			</g:each>             			
			<g:each in="${portfolioOverviewInstance.portfolios}" var="p">
				<script>document.write("${p.name}<br>");</script>
				<!--script>document.write("${p.test()}<br>");</script-->
				<div id="chart-${p.name}" style="height:300px; text-align:center, color:#999; line-height:300px; font-size:14px;">
					Loading...
				</div>
				<script>
				var chart_name = "chart-" + "${p.name}";
				new Chartkick.GeoChart("chart-${p.name}", data);
				
				</script>
			</g:each>             			
		Hijipr
            <script>
            	document.div.geo-graph.print("Hello");
                for(int i=0; i < countryNames.length; i++) {
                	var countryName = countryNames[i];
                	window.print(countryName);
                	var r = countryRisks[countryName][0] / countryRisks[countryName][1];
					//data[data.length] = [ countryName, countryRisks[countryName][0] / countryRisks[countryName][1] ];
				}
            </script>
            
           
		
	    	
			<div id="geo-graph" class="dash-graph geo">
				<div id="chart-4" style="height:300px; text-align:center, color:#999; line-height:300px; font-size:14px;">
					Loading...
				</div>
				<div id="chart-4" style="height: 300px;">
	                <script>
	                	//data = setTestData();
	                	/*var data = [
				 	      ['Germany', 2],
				          ['United States', 3],
				          ['Brazil', 4],
				          ['Canada', 5],
				          ['France', 6],
				          ['Sudan', 10],
				          ['Russia', 7]
	       				  ];
	       				  */
	       				  
	       				 //CountriesController.test();
	                 	//var data = CountriesController.getCountriesRisks();
	               	    
	                    new Chartkick.GeoChart("chart-4", data);
	                </script>
	        	</div>
			</div>
