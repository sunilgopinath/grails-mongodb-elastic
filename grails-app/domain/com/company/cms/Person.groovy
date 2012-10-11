package com.company.cms

class Person {

    String first
    String last
    String email
    String github
    String image
    String bio


    static constraints = {

        first()
        last()
        email()
        github()
        image()
        bio(maxSize:5000)
    }

    String toString() {
        "$first $last"
    }
}
