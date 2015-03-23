package com.portfolioaware.k.pages
import com.portfolioaware.k.*

class PortfolioOverview {

	String name
	static hasMany = [portfolios:Portfolio]

    static constraints = {
    }
    String toString = {
    	return name
    }
}
