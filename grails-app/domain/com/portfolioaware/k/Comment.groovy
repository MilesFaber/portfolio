package com.portfolioaware.k

class Comment {

    String content
	User poster
	Long date
	
    static constraints = {
    }
    String toString(){
    	return content; 
    }
}
