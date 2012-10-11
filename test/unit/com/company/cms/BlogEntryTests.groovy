package com.company.cms



import grails.test.mixin.*
import org.junit.*
import com.company.cms.*
/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(BlogEntry)
class BlogEntryTests {

    void testToString() {
       def blogEntry = new BlogEntry(title: 'A sample title',
                                     author: [first: 'Sunil', last:'Gopinath'] as Person,
                                     published: new Date('6/5/2010'),
                                     entryText: 'This is some sample text')
      assertEquals 'A sample title - Sunil Gopinath', blogEntry.toString()
    }
}
