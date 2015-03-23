package com.portfolioaware.k

class Client extends Associate{

    String status
	Long clientSince
	Profile profile
	static hasMany=[associates:Associate, reviews:Review]
	
    static constraints = {
		
    }
    String toString(){
	    return name; 
	}
}
