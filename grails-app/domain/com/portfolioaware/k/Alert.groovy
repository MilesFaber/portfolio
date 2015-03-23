package com.portfolioaware.k

class Alert {

    String type
	Article article
	Long date
	static hasMany = [comments:Comment]
	
    static constraints = {
    }
    String toString(){
    	return type; 
    }
}
