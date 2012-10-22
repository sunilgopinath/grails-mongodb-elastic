package com.company.cms

import grails.converters.*;
import com.mongodb.*;

class MostRecentService {

    def mongo

    def serviceMethod() {

    }

    def addToRecent(params) {
        def db = mongo.getDB("grails-mongodb-elastic")
        def collection = db.getCollection("feeddisplay")
        def mostRecent = new MostRecent(params)
        return "created"
        
    }
}
