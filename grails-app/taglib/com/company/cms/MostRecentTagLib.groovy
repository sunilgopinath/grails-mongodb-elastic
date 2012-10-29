package com.company.cms

import groovy.json.JsonSlurper

class MostRecentTagLib {

    def mostRecentService

    def mostRecent = { attrs, body ->
      out << createList()
    }

    def createList() {

        StringBuilder sb = new StringBuilder()

        def c = mostRecentService.getRecentPeople()
        def slurper = new JsonSlurper()
        def records = []
        sb << """<ol>"""
        c.each {
            System.out.println("***************")
            def result = slurper.parseText(it.toString())
            System.out.println(it.toString())
            System.out.println("***************")
            if(result.personId){
                sb << """
                        <li>
                            <a href="${createLink(uri: "/person/show/${result.personId}")}">
                                    ${result?.first} ${result?.last}</a>
                        </li>"""
            }

        }
        sb << """</ol>"""

    }

}
