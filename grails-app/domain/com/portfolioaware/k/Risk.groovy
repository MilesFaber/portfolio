package com.portfolioaware.k

class Risk {

    Double risk
	Double assetAmount
	Double probability
	Long reviewDate
	
    static constraints = {
    }
    String toString(){
	    return risk; 
	}
}
