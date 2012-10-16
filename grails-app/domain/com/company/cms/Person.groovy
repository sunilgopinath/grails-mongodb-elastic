package com.company.cms

class Person {

    String first
    String last
    String email
    String github
    String image
    String bio
    String username
    String password
    String twitterHandle


    static constraints = {

        first()
        last()
        email()
        github()
        image()
        bio(maxSize:5000)
        username()
        password()
        twitterHandle()
    }

    String toString() {
        "$first $last"
    }
}
