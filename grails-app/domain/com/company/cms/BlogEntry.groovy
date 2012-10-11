package com.company.cms

class BlogEntry {

    String title
    String author
    Date published
    String entryText

    static constraints = {
    }

    String toString() {
        "$title - $author"
    }
}
