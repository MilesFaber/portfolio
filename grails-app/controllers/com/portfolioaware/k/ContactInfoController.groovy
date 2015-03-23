package com.portfolioaware.k



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ContactInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ContactInfo.list(params), model:[contactInfoInstanceCount: ContactInfo.count()]
    }

    def show(ContactInfo contactInfoInstance) {
        respond contactInfoInstance
    }

    def create() {
        respond new ContactInfo(params)
    }

    @Transactional
    def save(ContactInfo contactInfoInstance) {
        if (contactInfoInstance == null) {
            notFound()
            return
        }

        if (contactInfoInstance.hasErrors()) {
            respond contactInfoInstance.errors, view:'create'
            return
        }

        contactInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'contactInfo.label', default: 'ContactInfo'), contactInfoInstance.id])
                redirect contactInfoInstance
            }
            '*' { respond contactInfoInstance, [status: CREATED] }
        }
    }

    def edit(ContactInfo contactInfoInstance) {
        respond contactInfoInstance
    }

    @Transactional
    def update(ContactInfo contactInfoInstance) {
        if (contactInfoInstance == null) {
            notFound()
            return
        }

        if (contactInfoInstance.hasErrors()) {
            respond contactInfoInstance.errors, view:'edit'
            return
        }

        contactInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ContactInfo.label', default: 'ContactInfo'), contactInfoInstance.id])
                redirect contactInfoInstance
            }
            '*'{ respond contactInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ContactInfo contactInfoInstance) {

        if (contactInfoInstance == null) {
            notFound()
            return
        }

        contactInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ContactInfo.label', default: 'ContactInfo'), contactInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'contactInfo.label', default: 'ContactInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
