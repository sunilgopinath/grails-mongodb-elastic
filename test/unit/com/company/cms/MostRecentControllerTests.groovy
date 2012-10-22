package com.company.cms



import org.junit.*
import grails.test.mixin.*

@TestFor(MostRecentController)
@Mock(MostRecent)
class MostRecentControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/mostRecent/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.mostRecentInstanceList.size() == 0
        assert model.mostRecentInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.mostRecentInstance != null
    }

    void testSave() {
        controller.save()

        assert model.mostRecentInstance != null
        assert view == '/mostRecent/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/mostRecent/show/1'
        assert controller.flash.message != null
        assert MostRecent.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/mostRecent/list'


        populateValidParams(params)
        def mostRecent = new MostRecent(params)

        assert mostRecent.save() != null

        params.id = mostRecent.id

        def model = controller.show()

        assert model.mostRecentInstance == mostRecent
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/mostRecent/list'


        populateValidParams(params)
        def mostRecent = new MostRecent(params)

        assert mostRecent.save() != null

        params.id = mostRecent.id

        def model = controller.edit()

        assert model.mostRecentInstance == mostRecent
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/mostRecent/list'

        response.reset()


        populateValidParams(params)
        def mostRecent = new MostRecent(params)

        assert mostRecent.save() != null

        // test invalid parameters in update
        params.id = mostRecent.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/mostRecent/edit"
        assert model.mostRecentInstance != null

        mostRecent.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/mostRecent/show/$mostRecent.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        mostRecent.clearErrors()

        populateValidParams(params)
        params.id = mostRecent.id
        params.version = -1
        controller.update()

        assert view == "/mostRecent/edit"
        assert model.mostRecentInstance != null
        assert model.mostRecentInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/mostRecent/list'

        response.reset()

        populateValidParams(params)
        def mostRecent = new MostRecent(params)

        assert mostRecent.save() != null
        assert MostRecent.count() == 1

        params.id = mostRecent.id

        controller.delete()

        assert MostRecent.count() == 0
        assert MostRecent.get(mostRecent.id) == null
        assert response.redirectedUrl == '/mostRecent/list'
    }
}
