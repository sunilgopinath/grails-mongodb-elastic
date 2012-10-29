package com.company.cms



import grails.test.mixin.*
import org.junit.*
import grails.test.GrailsUnitTestCase
/**
 * See the API for {@link grails.test.mixin.web.GroovyPageUnitTestMixin} for usage instructions
 */
class MostRecentTagLibTests extends GrailsUnitTestCase {

    def mockService = mockFor(MostRecentService)

    void testCreateList() {

        def testId = "123123"
        mockService.demand.getRecentPeople(1..1) { -> return testId }
        def mostRecentTagLib = new MostRecentTagLib()
        mostRecentTagLib.mostRecentService = mockService.createMock()
        System.out.println("!@#*!(@*#)!(@*#)!(@*#)!(@*#)!@(#*)!@(#*")
        System.out.println(mockService.demand.getRecentPeople(1..1) { -> return testId })
        System.out.println("!@#*!(@*#)!(@*#)!(@*#)!(@*#)!@(#*)!@(#*")
        assertNotNull mostRecentTagLib.mostRecentService.getRecentPeople()
    }
}
