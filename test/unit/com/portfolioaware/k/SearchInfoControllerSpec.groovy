package com.portfolioaware.k



import grails.test.mixin.*
import spock.lang.*

@TestFor(SearchInfoController)
@Mock(SearchInfo)
class SearchInfoControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        params["name"] = 'Bill Gates'
        params["query"] = 'http://ajax.googleapis.com/ajax/services/search/web?v=1.0&q=\''
        params["res"] = ''
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.searchInfoInstanceList
            model.searchInfoInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.searchInfoInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def searchInfo = new SearchInfo()
            searchInfo.validate()
            controller.save(searchInfo)

        then:"The create view is rendered again with the correct model"
            model.searchInfoInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            searchInfo = new SearchInfo(params)

            controller.save(searchInfo)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/searchInfo/show/1'
            controller.flash.message != null
            SearchInfo.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def searchInfo = new SearchInfo(params)
            controller.show(searchInfo)

        then:"A model is populated containing the domain instance"
            model.searchInfoInstance == searchInfo
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def searchInfo = new SearchInfo(params)
            controller.edit(searchInfo)

        then:"A model is populated containing the domain instance"
            model.searchInfoInstance == searchInfo
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/searchInfo/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def searchInfo = new SearchInfo()
            searchInfo.validate()
            controller.update(searchInfo)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.searchInfoInstance == searchInfo

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            searchInfo = new SearchInfo(params).save(flush: true)
            controller.update(searchInfo)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/searchInfo/show/$searchInfo.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/searchInfo/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def searchInfo = new SearchInfo(params).save(flush: true)

        then:"It exists"
            SearchInfo.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(searchInfo)

        then:"The instance is deleted"
            SearchInfo.count() == 0
            response.redirectedUrl == '/searchInfo/index'
            flash.message != null
    }
}
