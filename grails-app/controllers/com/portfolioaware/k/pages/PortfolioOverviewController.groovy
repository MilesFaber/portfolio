package com.portfolioaware.k.pages



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PortfolioOverviewController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PortfolioOverview.list(params), model:[portfolioOverviewInstanceCount: PortfolioOverview.count()]
    }

    def show(PortfolioOverview portfolioOverviewInstance) {
        respond portfolioOverviewInstance
    }

    def create() {
        respond new PortfolioOverview(params)
    }

    @Transactional
    def save(PortfolioOverview portfolioOverviewInstance) {
        if (portfolioOverviewInstance == null) {
            notFound()
            return
        }

        if (portfolioOverviewInstance.hasErrors()) {
            respond portfolioOverviewInstance.errors, view:'create'
            return
        }

        portfolioOverviewInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'portfolioOverview.label', default: 'PortfolioOverview'), portfolioOverviewInstance.id])
                redirect portfolioOverviewInstance
            }
            '*' { respond portfolioOverviewInstance, [status: CREATED] }
        }
    }

    def edit(PortfolioOverview portfolioOverviewInstance) {
        respond portfolioOverviewInstance
    }

    @Transactional
    def update(PortfolioOverview portfolioOverviewInstance) {
        if (portfolioOverviewInstance == null) {
            notFound()
            return
        }

        if (portfolioOverviewInstance.hasErrors()) {
            respond portfolioOverviewInstance.errors, view:'edit'
            return
        }

        portfolioOverviewInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PortfolioOverview.label', default: 'PortfolioOverview'), portfolioOverviewInstance.id])
                redirect portfolioOverviewInstance
            }
            '*'{ respond portfolioOverviewInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PortfolioOverview portfolioOverviewInstance) {

        if (portfolioOverviewInstance == null) {
            notFound()
            return
        }

        portfolioOverviewInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PortfolioOverview.label', default: 'PortfolioOverview'), portfolioOverviewInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'portfolioOverview.label', default: 'PortfolioOverview'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
