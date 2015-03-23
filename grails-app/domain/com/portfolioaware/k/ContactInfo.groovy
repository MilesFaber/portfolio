package com.portfolioaware.k

class ContactInfo {

    String content
	String type
	//static hasMany = [fields:ContactInfo]
	
    static constraints = {
    }
    String toString = {
    	return content;
    }
}
