package com.company.cms



import grails.test.mixin.*
import org.junit.*
import com.company.cms.*
/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(BlogEntry)
class BlogEntryTests {

    def existingBlogEntry

    @Before
    public void setUp() {

        existingBlogEntry = new BlogEntry(
                                    title: 'Test Entry',
                                    author: [first: 'Sunil', last:'Gopinath'] as Person,
                                    published: new Date(),
                                    entryText: 'Some example text'
                                    )

        mockForConstraintsTests(BlogEntry, [existingBlogEntry])

    }

    void testToString() {
       def blogEntry = new BlogEntry(title: 'A sample title',
                                     author: [first: 'Sunil', last:'Gopinath'] as Person,
                                     published: new Date('6/5/2010'),
                                     entryText: 'This is some sample text')
      assertEquals 'A sample title - Sunil Gopinath', blogEntry.toString()
    }

    void testConstraintsGoodValues() {

        assert existingBlogEntry.validate()
    }

    void testConstraintsTitle() {

        def blogEntry = new BlogEntry(
                                    author: [first: 'Sunil', last:'Gopinath'] as Person,
                                    published: new Date(),
                                    entryText: 'Some example text'
                                    )

        assert !blogEntry.validate()
        assert "nullable" == blogEntry.errors["title"]

        blogEntry.title='Test Entry'
        assert !blogEntry.validate()
        assert "unique" == blogEntry.errors["title"]
    }

    void testConstrainsAuthor() {
        
        def authorProblem = new BlogEntry(
                                    title: 'Test Entry 1',
                                    author: null,
                                    published: new Date(),
                                    entryText: 'Some example text'
                                    )

        assert !authorProblem.validate()
        assert "nullable" == authorProblem.errors["author"]

    }

    void testConstraintsPublished() {

         def publishedProblem = new BlogEntry(
                                    title: 'Test Entry',
                                    author: [first: 'Sunil', last:'Gopinath'] as Person,
                                    published: new Date() - 3,
                                    entryText: 'Some example text'
                                    )

        assert !publishedProblem.validate()
        assert "min" == publishedProblem.errors["published"]

    }

}
