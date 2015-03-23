package com.portfolioaware.k



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TeamLeaderController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TeamLeader.list(params), model:[teamLeaderInstanceCount: TeamLeader.count()]
    }

    def show(TeamLeader teamLeaderInstance) {
        respond teamLeaderInstance
    }

    def create() {
        respond new TeamLeader(params)
    }

    @Transactional
    def save(TeamLeader teamLeaderInstance) {
        if (teamLeaderInstance == null) {
            notFound()
            return
        }

        if (teamLeaderInstance.hasErrors()) {
            respond teamLeaderInstance.errors, view:'create'
            return
        }

        teamLeaderInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'teamLeader.label', default: 'TeamLeader'), teamLeaderInstance.id])
                redirect teamLeaderInstance
            }
            '*' { respond teamLeaderInstance, [status: CREATED] }
        }
    }

    def edit(TeamLeader teamLeaderInstance) {
        respond teamLeaderInstance
    }

    @Transactional
    def update(TeamLeader teamLeaderInstance) {
        if (teamLeaderInstance == null) {
            notFound()
            return
        }

        if (teamLeaderInstance.hasErrors()) {
            respond teamLeaderInstance.errors, view:'edit'
            return
        }

        teamLeaderInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TeamLeader.label', default: 'TeamLeader'), teamLeaderInstance.id])
                redirect teamLeaderInstance
            }
            '*'{ respond teamLeaderInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TeamLeader teamLeaderInstance) {

        if (teamLeaderInstance == null) {
            notFound()
            return
        }

        teamLeaderInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TeamLeader.label', default: 'TeamLeader'), teamLeaderInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'teamLeader.label', default: 'TeamLeader'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
