package com.company.cms

import org.springframework.dao.DataIntegrityViolationException
import com.mongodb.*;

class BlogEntryController {

    def mongo

    def beforeInterceptor = [action:this.&auth, except:["index", "list", "show"]]

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def auth() {
    if(!session.user) {
      redirect(controller:"person", action:"login")
      return false
    }
  }

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [blogEntryInstanceList: BlogEntry.list(params).reverse(), blogEntryInstanceTotal: BlogEntry.count()]
    }

    def create() {
        [blogEntryInstance: new BlogEntry(params)]
    }

    def save() {
        def blogEntryInstance = new BlogEntry(params)
        if (!blogEntryInstance.save(flush: true)) {
            render(view: "create", model: [blogEntryInstance: blogEntryInstance])
            return
        }
	flash.message = message(code: 'default.created.message', args: [message(code: 'blogEntry.label', default: 'BlogEntry'), blogEntryInstance.id])
        redirect(action: "show", id: blogEntryInstance.id)
    }

    def show() {
        def blogEntryInstance = BlogEntry.get(params.id)
        if (!blogEntryInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'blogEntry.label', default: 'BlogEntry'), params.id])
            redirect(action: "list")
            return
        }

        [blogEntryInstance: blogEntryInstance]
    }

    def edit() {
        def blogEntryInstance = BlogEntry.get(params.id)
        if (!blogEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'blogEntry.label', default: 'BlogEntry'), params.id])
            redirect(action: "list")
            return
        }

        [blogEntryInstance: blogEntryInstance]
    }

    def update() {
        def blogEntryInstance = BlogEntry.get(params.id)
        if (!blogEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'blogEntry.label', default: 'BlogEntry'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (blogEntryInstance.version > version) {
                blogEntryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'blogEntry.label', default: 'BlogEntry')] as Object[],
                          "Another user has updated this BlogEntry while you were editing")
                render(view: "edit", model: [blogEntryInstance: blogEntryInstance])
                return
            }
        }

        blogEntryInstance.properties = params

        if (!blogEntryInstance.save(flush: true)) {
            render(view: "edit", model: [blogEntryInstance: blogEntryInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'blogEntry.label', default: 'BlogEntry'), blogEntryInstance.id])
        redirect(action: "show", id: blogEntryInstance.id)
    }

    def delete() {
        def blogEntryInstance = BlogEntry.get(params.id)
        if (!blogEntryInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'blogEntry.label', default: 'BlogEntry'), params.id])
            redirect(action: "list")
            return
        }

        try {
            blogEntryInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'blogEntry.label', default: 'BlogEntry'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'blogEntry.label', default: 'BlogEntry'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
