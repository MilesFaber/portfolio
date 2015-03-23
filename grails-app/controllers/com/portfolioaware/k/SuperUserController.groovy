package com.portfolioaware.k



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SuperUserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SuperUser.list(params), model:[superUserInstanceCount: SuperUser.count()]
    }

    def show(SuperUser superUserInstance) {
        respond superUserInstance
    }

    def create() {
        respond new SuperUser(params)
    }

    @Transactional
    def save(SuperUser superUserInstance) {
        if (superUserInstance == null) {
            notFound()
            return
        }

        if (superUserInstance.hasErrors()) {
            respond superUserInstance.errors, view:'create'
            return
        }

        superUserInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'superUser.label', default: 'SuperUser'), superUserInstance.id])
                redirect superUserInstance
            }
            '*' { respond superUserInstance, [status: CREATED] }
        }
    }

    def edit(SuperUser superUserInstance) {
        respond superUserInstance
    }

    @Transactional
    def update(SuperUser superUserInstance) {
        if (superUserInstance == null) {
            notFound()
            return
        }

        if (superUserInstance.hasErrors()) {
            respond superUserInstance.errors, view:'edit'
            return
        }

        superUserInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SuperUser.label', default: 'SuperUser'), superUserInstance.id])
                redirect superUserInstance
            }
            '*'{ respond superUserInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SuperUser superUserInstance) {

        if (superUserInstance == null) {
            notFound()
            return
        }

        superUserInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SuperUser.label', default: 'SuperUser'), superUserInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'superUser.label', default: 'SuperUser'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
