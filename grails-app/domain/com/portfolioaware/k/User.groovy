package com.portfolioaware.k

class User {

    String name
	String identification
	
	
	static hasMany=[actions:Action, inbox:Message, outbox:Message]
	
    static constraints = {
    	name(blank:false, nullable: false, size:3..80)
    	identification(blank:false, nullable: false, size:3..80)
    }
    String toString(){
	    return name; 
	}
}
