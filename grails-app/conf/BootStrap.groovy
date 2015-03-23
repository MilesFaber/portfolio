import com.portfolioaware.k.*
import com.portfolioaware.k.pages.*
import java.util.HashMap
import portfolio_search.Search

class BootStrap {

    def init = { servletContext ->
      System.out.println("Bootstrapping......................................................................................................................");
      Risk risk1 = new Risk(risk:'.91', assetAmount:'1000.', probability:'.5', reviewDate: (new Date()).getTime() )
      if( risk1 == null ) {
      	  log.error "risk1==null!!"
	  }	
	  if(!risk1.save()){
	  	  log.error "Could not save risk1!!"
	  }
	  Risk risk2 = new Risk(risk:'.82', assetAmount:'1000.', probability:'.5', reviewDate: (new Date()).getTime() )
      if( risk2 == null ) {
      	  log.error "risk2==null!!"
	  }	
	  if(!risk2.save()){
	  	  log.error "Could not save risk2!!"
	  }
	  Risk risk3 = new Risk(risk:'.73', assetAmount:'1000.', probability:'.5', reviewDate: (new Date()).getTime() )
      if( risk3 == null ) {
      	  log.error "risk3==null!!"
	  }	
	  if(!risk3.save()){
	  	  log.error "Could not save risk3!!"
	  }
	  Risk risk4 = new Risk(risk:'.64', assetAmount:'1000.', probability:'.5', reviewDate: (new Date()).getTime() )
      if( risk4 == null ) {
      	  log.error "risk4==null!!"
	  }	
	  if(!risk4.save()){
	  	  log.error "Could not save risk4!!"
	  }
	  Risk risk5 = new Risk(risk:'.55', assetAmount:'1000.', probability:'.5', reviewDate: (new Date()).getTime() )
      if( risk5 == null ) {
      	  log.error "risk5==null!!"
	  }	
	  if(!risk5.save()){
	  	  log.error "Could not save risk5!!"
	  }
	  Risk risk6 = new Risk(risk:'.46', assetAmount:'1000.', probability:'.5', reviewDate: (new Date()).getTime() )
      if( risk6 == null ) {
      	  log.error "risk6==null!!"
	  }	
	  if(!risk6.save()){
	  	  log.error "Could not save risk6!!"
	  }
	  Risk risk7 = new Risk(risk:'.37', assetAmount:'1000.', probability:'.5', reviewDate: (new Date()).getTime() )
      if( risk7 == null ) {
      	  log.error "risk7==null!!"
	  }	
	  if(!risk7.save()){
	  	  log.error "Could not save risk7!!"
	  }
	  Risk risk8 = new Risk(risk:'.28', assetAmount:'1000.', probability:'.5', reviewDate: (new Date()).getTime() )
      if( risk8 == null ) {
      	  log.error "risk8==null!!"
	  }	
	  if(!risk8.save()){
	  	  log.error "Could not save risk8!!"
	  }
	  Risk risk9 = new Risk(risk:'.19', assetAmount:'1000.', probability:'.5', reviewDate: (new Date()).getTime() )
      if( risk9 == null ) {
      	  log.error "risk9==null!!"
	  }	
	  if(!risk9.save()){
	  	  log.error "Could not save risk9!!"
	  }
	  Risk risk10 = new Risk(risk:'.1', assetAmount:'1000.', probability:'.5', reviewDate: (new Date()).getTime() )
      if( risk10 == null ) {
      	  log.error "risk10==null!!"
	  }	
	  if(!risk10.save()){
	  	  log.error "Could not save risk10!!"
	  }
	  
	  Manager managerA = new Manager(name:'Adam West', identification:'SSN-bat-ma-nbat')
	  if (!managerA.save()){
	    log.error "Could not save managerA!!"
	    log.error "${managerA.errors}"
	  }
	  
	  Manager managerB = new Manager(name:'Tory Lambert', identification:'SSN-323-63-6215')
	  if (!managerB.save()){
	    log.error "Could not save managerB!!"
	    log.error "${managerB.errors}"
	  }
	  
	  Manager managerC = new Manager(name:'Karl Junger', identification:'SSN-695-45-0011')
	  if (!managerC.save()){
	    log.error "Could not save managerC!!"
	    log.error "${managerC.errors}"
	  }
	  
	  Manager managerD = new Manager(name:'Alice Bach', identification:'SSN-192-45-0210')
	  if (!managerD.save()){
	    log.error "Could not save managerD!!"
	    log.error "${managerD.errors}"
	  }
	 
	  
	  Portfolio portfolioOne = new Portfolio(name:'Charles Xavier-s Portfolio', identification:'portfolio#0001',
	   	risk:risk1)
	  portfolioOne.addToManagers(managerA)
	  
	  if(!portfolioOne.save()){
	    log.error "Could not save portfolioOneA!!"
	    log.error "${portfolioOne.errors}"
	  }
	  
	  Portfolio portfolioA = new Portfolio(name:'Adam West-s second portfolio', identification:'portfolio#0002',
	   	risk:risk2)
	  portfolioA.addToManagers(managerA)
	  portfolioA.addToManagers(managerB)
	  
	  if(!portfolioA.save()){
	    log.error "Could not save portfolioA!!"
	    log.error "${portfolioA.errors}"
	  }

 	PortfolioOverview portfolioOverview = new PortfolioOverview(name:'portfolio overview')
	  portfolioOverview.addToPortfolios(portfolioA)
	  portfolioOverview.addToPortfolios(portfolioOne)
	  if(!portfolioOverview.save()){
	    log.error "Could not save portfolioOverview!!"
	    log.error "${portfolioOverview.errors}"
	  }
	  

	  managerA.addToPortfolios(portfolioOne)
	  managerA.addToPortfolios(portfolioA)
	  if (!managerA.save()){
	    log.error "Could not save managerA!!"
	    log.error "${managerA.errors}"
	  }

	  managerB.addToPortfolios(portfolioA)
	  if (!managerA.save()){
	    log.error "Could not save managerB!!"
	    log.error "${managerB.errors}"
	  }
	  
	  
	  Portfolio portfolioB = new Portfolio(name:'Joint share portfolio', identification:'portfolio#0003',
	   	risk:risk3)
	  portfolioB.addToManagers(managerC)
	  portfolioB.addToManagers(managerD)
	  
	  if(!portfolioB.save()){
	    log.error "Could not save portfolioB!!"
	    log.error "${portfolioB.errors}"
	  }
	  
	  
	  Profile profiletest = new Profile(name: 'Charles Xavier-s Profile', biography: 'Charles Xaver born in 1940' , PEP: 'none')
	  if(!profiletest.save()){
	    log.error "Could not save profiletest!!"
	    log.error "${profiletest.errors}"
	  }
	  
	  Review reviewA = new Review(startDate:(new Date()).getTime(), risk:risk1, reviewer:managerA)
	  if(!reviewA.save()){
	    log.error "Could not save reviewA!!"
	    log.error "${reviewA.errors}"
	  }
	  Review reviewB = new Review(startDate:(new Date()).getTime(), risk:risk2, reviewer:managerA)
	  if(!reviewB.save()){
	    log.error "Could not save reviewB!!"
	    log.error "${reviewB.errors}"
	  }
	  Review reviewC = new Review(startDate:(new Date()).getTime(), risk:risk3, reviewer:managerA)
	  if(!reviewC.save()){
	    log.error "Could not save reviewC!!"
	    log.error "${reviewC.errors}"
	  }
	  Review reviewD = new Review(startDate:(new Date()).getTime(), risk:risk4, reviewer:managerA)
	  if(!reviewD.save()){
	    log.error "Could not save reviewD!!"
	    log.error "${reviewD.errors}"
	  }
	  Review reviewE = new Review(startDate:(new Date()).getTime(), risk:risk2, reviewer:managerA)
	  if(!reviewE.save()){
	    log.error "Could not save reviewE!!"
	    log.error "${reviewE.errors}"
	  }
	  Review reviewF = new Review(startDate:(new Date()).getTime(), risk:risk4, reviewer:managerA)
	  if(!reviewF.save()){
	    log.error "Could not save reviewF!!"
	    log.error "${reviewF.errors}"
	  }
	  
	  Countries countries = new Countries(name: 'Countries List')
	  Country country = new Country(name: 'United States' )
	  //, risk:risk10
	  if(!country.save()){
	    log.error "Could not save country!!"
	    log.error "${country.errors}"
	  }
	  countries.addToCountries(country) 
	  country = new Country(name: 'United Kingdom')
	  //, risk:risk9 
	  if(!country.save()){
	    log.error "Could not save country!!"
	    log.error "${country.errors}"
	  }
	  
	  countries.addToCountries(new Country(name: 'India' ))
	  //, risk:risk6
	 /*
	  countries.addToCountries(new Country(name: 'France', risk:risk9 ))
	  countries.addToCountries(new Country(name: 'China', risk:risk7))
	  countries.addToCountries(new Country(name: 'Russia', risk:risk6))
	  countries.addToCountries(new Country(name: 'Germany', risk:risk10 ))
	  countries.addToCountries(new Country(name: 'Japan', risk:risk9 ))
	  countries.addToCountries(new Country(name: 'Italy', risk:risk8 ))
	  countries.addToCountries(new Country(name: 'Canada', risk:risk10 ))
	  countries.addToCountries(new Country(name: 'Mexico', risk:risk6 ))
	  countries.addToCountries(new Country(name: 'Korea Republic', risk:risk8 ))
	  countries.addToCountries(new Country(name: 'Taiwan', risk:risk8 ))
	  countries.addToCountries(new Country(name: 'Spain', risk:risk7 ))
	  countries.addToCountries(new Country(name: 'Switzerland', risk:risk10 ))
	  countries.addToCountries(new Country(name: 'Netherlands', risk:risk9 ))
	  countries.addToCountries(new Country(name: 'Saudi Arabia', risk:risk5 ))
	  countries.addToCountries(new Country(name: 'Pakistan', risk:risk3 ))
	  
	  countries.addToCountries(new Country(name: 'Iran', risk:risk9 ))
	  countries.addToCountries(new Country(name: 'Egypt', risk:risk2 ))
	  countries.addToCountries(new Country(name: 'South Africa', risk:risk6 ))
	  countries.addToCountries(new Country(name: 'Nigeria', risk:risk5 ))
	  countries.addToCountries(new Country(name: 'Brazil', risk:risk6 ))
	  countries.addToCountries(new Country(name: 'Argentina', risk:risk7 ))
	  countries.addToCountries(new Country(name: 'Sweden', risk:risk9 ))
	  countries.addToCountries(new Country(name: 'Norway', risk:risk9 ))
	  countries.addToCountries(new Country(name: 'Thailand', risk:risk6 ))
	  countries.addToCountries(new Country(name: 'Austria', risk:risk9 ))
	  countries.addToCountries(new Country(name: 'Czech Republic', risk:risk9 ))
	  countries.addToCountries(new Country(name: 'Portugal', risk:risk6 ))
	  countries.addToCountries(new Country(name: 'Turkey', risk:risk7 ))
	  countries.addToCountries(new Country(name: 'Vietnam', risk:risk4 ))
	  countries.addToCountries(new Country(name: 'Australia', risk:risk9 ))
	  countries.addToCountries(new Country(name: 'Mongolia', risk:risk8 ))
	  */
	  countries.save()
	  
	  Country clientCountry= Country.findByName("United Kingdom")
	  if( clientCountry == null ) {
	  	  
      	  log.error "clientCountry==null!!"
	  }
	  else{
	  	  System.out.println("----clientCountry = "+clientCountry.name);
	  	  //System.out.println("----clientCountry = "+clientCountry.risk);
	  }
	  
	  Client clienttest = new Client(name: 'Charles Xavier', identification: 'SSN-264-83-2735', status: 'active',
	 	clientSince: (new Date()).getTime(), risk: risk2, profile:profiletest, country: clientCountry)
	  clienttest.addToReviews(reviewA)
	  clienttest.addToReviews(reviewB)
	  clienttest.addToReviews(reviewC)
	  clienttest.addToReviews(reviewD)
	  clienttest.addToReviews(reviewE)
	  clienttest.addToReviews(reviewF)
	  if(!clienttest.save()){
	    log.error "Could not save clienttest!!"
	    log.error "${clienttest.errors}"
	  }
	  
	  Client clientA = new Client(name:'Enrique Banuelos', identification:'SSN-483-42-9583', status:'active',
	 	clientSince:(new Date()).getTime(), risk:risk1, profile:profiletest, country: Country.findByName("India"))
	  if(!clientA.save()){
	    log.error "Could not save clientA!!"
	    log.error "${clientA.errors}"
	  }
	  Client clientB = new Client(name:'Harindarpal Banga', identification:'SSN-923-15-1259', status:'active',
	 	clientSince:(new Date()).getTime(), risk:risk4, profile:profiletest, country: Country.findByName("India"))
	  if(!clientB.save()){
	    log.error "Could not save clientB!!"
	    log.error "${clientB.errors}"
	  }
	  
	  
	  Client clientC = new Client(name:'Angela Bennett', identification:'SSN-182-53-6950', status:'active',
	 	clientSince:(new Date()).getTime(), risk:risk3, profile:profiletest, country: Country.findByName("United States"))
	  if(!clientC.save()){
	    log.error "Could not save clientC!!"
	    log.error "${clientC.errors}"
	  }
	  
	  Search search = new Search();
	  def testData = search.getTestData()

	  Client client = null
	  def cardNumber = 1
	  
	  for( String n in names ) {
	  	client = new Client(name: n, identification: "ID"+cardNumber, status: 'active',
	 		clientSince:(new Date()).getTime(), risk:risk1, profile:profiletest, country: Country.findByName("United States"))
	 	def uriList = search.readTxt(n)
	 	if(uriList) {
	 		SearchInfo searchInfo = new SearchInfo(name: n, query: n)
	 		for( String uriString : uriList ) {
	 			searchInfo.addToUrls(uriString)	
			}
	 		client.addToSearchInfos(searchInfo)
	 	}
	    if(!client.save()){
	    	log.error "Could not save client!!"
	    	log.error "${client.errors}"
	    }
	  	portfolioOne.addToClients(client)
	    cardNumber++
	  }
	  if(!portfolioOne.save()){
	    log.error "Could not save portfolioOneA!!"
	    log.error "${portfolioOne.errors}"
	  }
	  
	  portfolioOne.addToClients(clienttest)
	  portfolioOne.addToClients(clientA)
	  portfolioOne.addToClients(clientB)
	  portfolioOne.addToClients(clientC)
	  portfolioOne.save()
	  
	  Associate associateA = new Associate(name:'Kostyantin Zhevago', identification:'SSN-129-44-5449', risk:risk2, country: Country.findByName("Russia"))
	  if(!associateA.save()){
	    log.error "Could not save associateA!!"
	    log.error "${associateA.errors}"
	  }
	  
	  Associate associateB = new Associate(name:'Michael Steinhardt', identification:'SSN-938-24-5962', risk:risk3, country: Country.findByName("Germany"))
	  if(!associateB.save()){
	    log.error "Could not save associateB!!"
	    log.error "${associateB.errors}"
	  }
	  
	  Associate associateC = new Associate(name:'Sheryl Sandberg', identification:'SSN-948-53-1948', risk:risk4, country: Country.findByName("Australia"))
	  if(!associateC.save()){
	    log.error "Could not save associateC!!"
	    log.error "${associateC.errors}"
	  }
	  
	    User poster= new User(name:'Bob Anderson', identification:'SSN-733-99-5643', country: Country.findByName("Canada"))
	  if (!poster.save()){
	    log.error "Could not save poster!!"
	    log.error "${poster.errors}"
	  }
	  
      Comment articleComment = new Comment(content:'this article is interesting', poster:poster, date: (new Date()).getTime())
      if (!articleComment.save()){
	    log.error "Could not save articleComment!!"
	    log.error "${articleComment.errors}"
	  }
      
	  Article testArticle = new Article(filePath:'Chales Xavier Report.txt', source:'www.XavierAcademy.edu',
	  		type:'text file', link:'http://www.XavierAcademy.edu/profile/CharlesXavier/Charles_Xavier_Report.txt',
	  		identification:'Article #00001', created_at:(new Date()).getTime())
      testArticle.addToComments(articleComment)
      if (!testArticle.save()){
	    log.error "Could not save testArticle!!"
	    log.error "${testArticle.errors}"
	  }
	  
	  for(clt in Client.list()){
	  	
	  	System.out.println(clt.name + ", Risk:" + clt.risk.risk);
	  }
	  
	  System.out.println(".................Bootstrap done..................");
	  
    }
    
    def names = [
	"John Romza",
	"James Buda",
	"Syed Ali",
	"James Geiger",
	"Mike Lafitte",
	"Matthew Khourie",
	"Jim Groch",
	"Anthony Ambrosio",
	"Perry Karsen",
	"Mark Alles",
	"Thomas Daniel",
	"David Mcclanahan",
	"Karen Puckett",
	"Andrew Miller",
	"Julie Wilson",
	"Michael Nill",
	"G. Marc",
	"Jeffrey Townsend",
	"Nancy Gillett",
	"Thomas Ackerman",
	"Kathleen Mayo",
	"Christopher Winfrey",
	"Spencer Lee",
	"Domenic Dell'Osso",
	"Pamela Knous",
	"David Dyer",
	"Bob Blessing",
	"Mark Crumpacker",
	"Robert Evans",
	"James Farnsworth",
	"Joseph Bryant",
	"John Murabito",
	"Thomas Jorden",
	"Paul Korus",
	"Joseph Albi",
	"Tim Warner",
	"Frank Calderoni",
	"Nelson Chai",
	"John Thain",
	"Vikram Pandit",
	"John Gerspach",
	"Christopher Conway",
	"Andrew Littlefair",
	"Richard Wheeler",
	"Christopher Eccleshare",
	"Gordon Jones",
	"Donald Gallagher",
	"Joseph Carrabba",
	"Kimberly Taylor",
	"James Farnsworth",
	"Hubert Patricot",
	"Joseph Harvey",
	"Helene Simonet",
	"David Hall",
	"Timothy Boyle",
	"Michael Portacci",
	"William Hussey",
	"Al Bunte",
	"Lou Miceli",
	"Richard Gilbert",
	"Thomas Hogan",
	"Robert Paul",
	"Roland Burns",
	"Brian Keck",
	"D. Grossman",
	"Joseph Corasanti",
	"Jeffrey Sheets",
	"Don Wallette",
	"Al Hirshberg",
	"John Wright",
	"Thomas Mullin",
	"Robert Ryder",
	"Felix Dawson",
	"George Persky",
	"Douglas Stotlar",
	"Grant Gawronski",
	"Alastair Mcewan",
	"Lawrence Mcrae",
	"Michael German",
	"Todd Mullenger",
	"Brian Radecki",
	"Tom Charlesworth",
	"Thomas Zielinski",
	"Gregg Tanner",
	"Angel Martinez",
	"Constance Rishwain",
	"James Israel",
	"Stephen Felice",
	"Glen Hauenstein",
	"Kevin Parker",
	"Lee Schram",
	"William Jellison",
	"Lyndon Taylor"
	]
    
    def destroy = {
    }
}
