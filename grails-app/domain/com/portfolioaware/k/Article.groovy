package com.portfolioaware.k

class Article {

    String filePath
    String source
    String type
    String link
    String identification
    Long created_at
    static hasMany = [comments:Comment]
    
    static constraints = {
    	filePath(blank:false, nullable:false, size:3..80)
    }
    String toString(){
    	return filePath; 
    }
}
