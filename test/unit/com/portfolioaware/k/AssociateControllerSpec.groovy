package com.portfolioaware.k



import grails.test.mixin.*
import spock.lang.*

@TestFor(AssociateController)
@Mock(Associate)
class AssociateControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        params["name"] = 'John Smith'
        params["identification"] = 'SSN-928-48-3382'
        def risk= new Risk( risk:'.5', assetAmount:'1000.', probability:'.5')
        params["risk"] = risk
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.associateInstanceList
            model.associateInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.associateInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def associate = new Associate()
            associate.validate()
            controller.save(associate)

        then:"The create view is rendered again with the correct model"
            model.associateInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            associate = new Associate(params)

            controller.save(associate)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/associate/show/1'
            controller.flash.message != null
            Associate.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def associate = new Associate(params)
            controller.show(associate)

        then:"A model is populated containing the domain instance"
            model.associateInstance == associate
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def associate = new Associate(params)
            controller.edit(associate)

        then:"A model is populated containing the domain instance"
            model.associateInstance == associate
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/associate/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def associate = new Associate()
            associate.validate()
            controller.update(associate)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.associateInstance == associate

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            associate = new Associate(params).save(flush: true)
            controller.update(associate)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/associate/show/$associate.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/associate/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def associate = new Associate(params).save(flush: true)

        then:"It exists"
            Associate.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(associate)

        then:"The instance is deleted"
            Associate.count() == 0
            response.redirectedUrl == '/associate/index'
            flash.message != null
    }
}
