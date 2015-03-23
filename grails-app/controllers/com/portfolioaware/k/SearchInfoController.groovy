package com.portfolioaware.k



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SearchInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SearchInfo.list(params), model:[searchInfoInstanceCount: SearchInfo.count()]
    }

    def show(SearchInfo searchInfoInstance) {
        respond searchInfoInstance
    }

    def create() {
        respond new SearchInfo(params)
    }

    @Transactional
    def save(SearchInfo searchInfoInstance) {
        if (searchInfoInstance == null) {
            notFound()
            return
        }

        if (searchInfoInstance.hasErrors()) {
            respond searchInfoInstance.errors, view:'create'
            return
        }

        searchInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'searchInfo.label', default: 'SearchInfo'), searchInfoInstance.id])
                redirect searchInfoInstance
            }
            '*' { respond searchInfoInstance, [status: CREATED] }
        }
    }

    def edit(SearchInfo searchInfoInstance) {
        respond searchInfoInstance
    }

    @Transactional
    def update(SearchInfo searchInfoInstance) {
        if (searchInfoInstance == null) {
            notFound()
            return
        }

        if (searchInfoInstance.hasErrors()) {
            respond searchInfoInstance.errors, view:'edit'
            return
        }

        searchInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SearchInfo.label', default: 'SearchInfo'), searchInfoInstance.id])
                redirect searchInfoInstance
            }
            '*'{ respond searchInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SearchInfo searchInfoInstance) {

        if (searchInfoInstance == null) {
            notFound()
            return
        }

        searchInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SearchInfo.label', default: 'SearchInfo'), searchInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'searchInfo.label', default: 'SearchInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
