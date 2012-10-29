package com.company.cms

class BlogEntry {

    String title
    Person author
    Date published
    String entryText
    String getExcerpt() { return entryText.size() > 50?entryText[0..50]:entryText }
    Boolean isTruncated() { entryText.size() > 50 }

    static constraints = {

        title blank: false, unique: true
        author blank: false
        published(min: new Date() - 1)
        entryText blank: false, maxSize:5000
        
    }

    static transients = ['excerpt', 'truncated']

    String toString() {
        "$title - $author"
    }
}
