package com.portfolioaware.k



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CountriesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Countries.list(params), model:[countriesInstanceCount: Countries.count()]
    }

    def show(Countries countriesInstance) {
        respond countriesInstance
    }

    def create() {
        respond new Countries(params)
    }

    @Transactional
    def save(Countries countriesInstance) {
        if (countriesInstance == null) {
            notFound()
            return
        }

        if (countriesInstance.hasErrors()) {
            respond countriesInstance.errors, view:'create'
            return
        }

        countriesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'countries.label', default: 'Countries'), countriesInstance.id])
                redirect countriesInstance
            }
            '*' { respond countriesInstance, [status: CREATED] }
        }
    }

    def edit(Countries countriesInstance) {
        respond countriesInstance
    }

    @Transactional
    def update(Countries countriesInstance) {
        if (countriesInstance == null) {
            notFound()
            return
        }

        if (countriesInstance.hasErrors()) {
            respond countriesInstance.errors, view:'edit'
            return
        }

        countriesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Countries.label', default: 'Countries'), countriesInstance.id])
                redirect countriesInstance
            }
            '*'{ respond countriesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Countries countriesInstance) {

        if (countriesInstance == null) {
            notFound()
            return
        }

        countriesInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Countries.label', default: 'Countries'), countriesInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'countries.label', default: 'Countries'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
