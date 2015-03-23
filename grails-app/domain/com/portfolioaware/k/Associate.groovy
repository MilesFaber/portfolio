package com.portfolioaware.k

class Associate {

    String name
	String identification
	Risk risk
	Country country
	ContactInfo contactInfo
	static hasMany = [articles:Article, alerts:Alert, comments:Comment, searchInfos:SearchInfo]
	
    static constraints = {
    	name(blank:false, nullable: false, size:3..80)
    	identification(blank:false, nullable: false, size:3..80)
    	contactInfo(nullable:true)
    	country(nullable:true)
    }
    String toString(){
	    return name; 
	}
}
