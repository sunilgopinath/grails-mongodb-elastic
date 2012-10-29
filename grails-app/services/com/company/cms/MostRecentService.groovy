package com.company.cms

import grails.converters.*;
import com.mongodb.*;

class MostRecentService {

    def mongo

    def serviceMethod() {

    }

    def addToRecent(person) {
        def db = mongo.getDB("grails-mongodb-elastic")
        def collection = db.getCollection("feeddisplay")
        db.feeddisplay.insert([first:person.first,last:person.last,personId:person.id]);
        return "created"
        
    }

    def getRecentPeople() {
        try {
            def db = mongo.getDB("grails-mongodb-elastic")
            return db.feeddisplay.find().sort([$natural:-1])
        } catch(NullPointerException e) {
            return "hello"
        }

        
    }
}
