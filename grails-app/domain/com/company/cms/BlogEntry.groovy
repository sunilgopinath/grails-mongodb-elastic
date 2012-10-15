package com.company.cms

class BlogEntry {

    String title
    Person author
    Date published
    String entryText
    String getExcerpt() { return entryText.size() > 50?entryText[0..50]:entryText }
    Boolean isTruncated() { entryText.size() > 50 }

    static constraints = {

        title()
        author()
        published()
        entryText(maxSize:5000)
        
    }

    static transients = ['excerpt', 'truncated']

    String toString() {
        "$title - $author"
    }
}
