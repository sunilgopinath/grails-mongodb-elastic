package com.company.cms



import grails.test.mixin.*
import org.junit.*
import com.company.cms.*
/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Person)
class PersonTests {

    void testToString() {
       def person = new Person(first: 'Sunil', last:'Gopinath')
       assertEquals 'Sunil Gopinath', person.toString()
    }
}
