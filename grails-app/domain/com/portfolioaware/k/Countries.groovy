package com.portfolioaware.k

class Countries {

    String name
	static hasMany = [countries:Country]
    static constraints = {
    }
    String toString(){
    	return name;
    }
}
