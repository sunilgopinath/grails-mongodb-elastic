package com.company.cms

class BlogEntry {

    String title
    Person author
    Date published
    String entryText

    static constraints = {

        title()
        author()
        published()
        entryText(maxSize:5000)
        
    }

    String toString() {
        "$title - $author"
    }
}
