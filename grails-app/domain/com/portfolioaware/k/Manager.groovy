package com.portfolioaware.k

class Manager {

    static hasMany=[portfolios:Portfolio, reviews:Review]
	
    static constraints = {
    }
    String toString(){
	    return name; 
	}
}
