package com.portfolioaware.k

class Review {

    Long startDate
	Long completionDate
	Long dueDate
	Risk risk
	Manager reviewer
	static hasMany =[comments:Comment]
	
    static constraints = {
	    completionDate(nullable:true)
	    dueDate(nullable:true)
    }
    String toString(){
    	return "review"; 
    }
}
