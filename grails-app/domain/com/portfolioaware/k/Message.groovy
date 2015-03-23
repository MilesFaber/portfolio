package com.portfolioaware.k

class Message {

    String subject
	String content
	Long sendDate
	User receiver
	static hasMany = [articles:Article, comments:Comment]
	
    static constraints = {
    }
    String toString(){
    	return subject;
    }
}
