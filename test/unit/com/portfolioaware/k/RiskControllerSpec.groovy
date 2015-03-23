package com.portfolioaware.k



import grails.test.mixin.*
import spock.lang.*

@TestFor(RiskController)
@Mock(Risk)
class RiskControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        params["risk"] = '.5'
        params["assetAmount"] = '1000.'
        params["probability"] = '.5'
        params["reviewDate"] = (new Date()).getTime()
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.riskInstanceList
            model.riskInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.riskInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def risk = new Risk()
            risk.validate()
            controller.save(risk)

        then:"The create view is rendered again with the correct model"
            model.riskInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            risk = new Risk(params)

            controller.save(risk)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/risk/show/1'
            controller.flash.message != null
            Risk.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def risk = new Risk(params)
            controller.show(risk)

        then:"A model is populated containing the domain instance"
            model.riskInstance == risk
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def risk = new Risk(params)
            controller.edit(risk)

        then:"A model is populated containing the domain instance"
            model.riskInstance == risk
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/risk/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def risk = new Risk()
            risk.validate()
            controller.update(risk)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.riskInstance == risk

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            risk = new Risk(params).save(flush: true)
            controller.update(risk)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/risk/show/$risk.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/risk/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def risk = new Risk(params).save(flush: true)

        then:"It exists"
            Risk.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(risk)

        then:"The instance is deleted"
            Risk.count() == 0
            response.redirectedUrl == '/risk/index'
            flash.message != null
    }
}
