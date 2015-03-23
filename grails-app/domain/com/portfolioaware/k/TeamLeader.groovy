package com.portfolioaware.k

class TeamLeader extends Manager{

	static hasMany = [subordinates:Manager]

    static constraints = {
    }
}