package com.portfolioaware.k



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RiskController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Risk.list(params), model:[riskInstanceCount: Risk.count()]
    }

    def show(Risk riskInstance) {
        respond riskInstance
    }

    def create() {
        respond new Risk(params)
    }

    @Transactional
    def save(Risk riskInstance) {
        if (riskInstance == null) {
            notFound()
            return
        }

        if (riskInstance.hasErrors()) {
            respond riskInstance.errors, view:'create'
            return
        }

        riskInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'risk.label', default: 'Risk'), riskInstance.id])
                redirect riskInstance
            }
            '*' { respond riskInstance, [status: CREATED] }
        }
    }

    def edit(Risk riskInstance) {
        respond riskInstance
    }

    @Transactional
    def update(Risk riskInstance) {
        if (riskInstance == null) {
            notFound()
            return
        }

        if (riskInstance.hasErrors()) {
            respond riskInstance.errors, view:'edit'
            return
        }

        riskInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Risk.label', default: 'Risk'), riskInstance.id])
                redirect riskInstance
            }
            '*'{ respond riskInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Risk riskInstance) {

        if (riskInstance == null) {
            notFound()
            return
        }

        riskInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Risk.label', default: 'Risk'), riskInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'risk.label', default: 'Risk'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
