package com.portfolioaware.k

class SearchInfo {

    String name = "Bill Gates"
	String query = "http://ajax.googleapis.com/ajax/services/search/web?v=1.0&q=\""
	String res = ""
	static hasMany =[urls:String]
	
    static constraints = {
    }
}
