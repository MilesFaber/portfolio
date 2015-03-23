package com.portfolioaware.k

class Portfolio {

    String name
	String identification
	Risk risk
	//User manager
	static belongsTo = Manager
	//static mappedBy = [ managers: "portfolio" ] 
	static hasMany=[managers: Manager, clients:Client, alerts:Alert, comments:Comment]
	
	
    static constraints = {
    	name(blank:false, nullable: false, size:3..80)
    	identification(blank:false, nullable: false, size:3..80)
    	managers(nullable:true)
    }
    String toString(){
    	return name; 
    }
    
    class StringAndDouble {
    	public StringAndDouble(String name, Double risk) {
    		this.name = name;
    		this.risk = risk;
    	}
    	String name;
    	Double risk;
    }
    
   
   	
   	String test(){
   		return "portfolio:testingtesting";
   	}
}
