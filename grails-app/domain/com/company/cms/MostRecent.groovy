package com.company.cms

class MostRecent {

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
        username(unique:true)
        password(password:true)
        twitterHandle()
    }

    static mapping = {
        collection "feeddisplay"
        database "grails-mongodb-elastic"
    }
}
