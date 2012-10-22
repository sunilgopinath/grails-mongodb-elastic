package com.company.cms

import org.springframework.dao.DataIntegrityViolationException

class MostRecentController {

    def mostRecentService

    def index() {
        
        render mostRecentService.addToRecent()
    }


}
