package com.company.cms

class Person {

    String first
    String last


    static constraints = {
    }

    String toString() {
        "$first $last"
    }
}
