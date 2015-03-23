package com.portfolioaware.k

class Action {

    String instructions
	Long createDate
	Long dueDate
	Long completionDate
	static hasMany = [comments:Comment]
	
    static constraints = {
    }
    String toString(){
	    return instructions; 
	}
}
