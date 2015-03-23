package com.portfolioaware.k

class Country {

    String name
	String locale
	
	
    static constraints = {
    	locale(nullable:true)
    }
    String toString(){
    	return name;
    }
}
