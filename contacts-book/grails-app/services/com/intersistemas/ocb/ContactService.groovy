package com.intersistemas.ocb

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

import javax.servlet.http.HttpServletRequest

class ContactService {

    AuthenticationService authenticationService
    ContactDetailsService contactDetailsService

    @Transactional
    def save(GrailsParameterMap params, HttpServletRequest request) {
        Contact contact = new Contact(params)
        contact.member = authenticationService.getMember()
        def response = AppUtil.saveResponse(false, contact)

        if (contact.validate()) {
            contact.save(flush: true)
            if (!contact.hasErrors()) {
                contactDetailsService.createOrUpdateDetails(contact, params)
                uploadImage(contact, request)
                response.isSuccess = true
            }
        }

        return response
    }

    def update(Contact contact, GrailsParameterMap params, HttpServletRequest request) {
        contact.properties = params
        def response = AppUtil.saveResponse(false, contact)
        if (contact.validate()) {

            
            contact.save(flush: true)
            if(!contact.hasErrors()) {
                response.isSuccess = true
                contactDetailsService.createOrUpdateDetails(contact, params)
                FileUtil.deleteContactImage(contact.id, contact.image);
                uploadImage(contact, request)
                
            }
        }

        return response
    }

    def get(Serializable id) {
        return Contact.get(id)
    }

    def list(GrailsParameterMap params) {
        params.max = params.max?: GlobalConfig.itemsPerPage()
        List<Contact> contactList = Contact.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
            if (!params.sort) {
                order("id", "desc")
            }

            eq("member", authenticationService.getMember())
        }

        return [list: contactList, count: contactList.totalCount]

    }

    

    def delete(Contact contact) {
        try {
            FileUtil.deleteContactImage(contact.id, contact.image);
            contact.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }

        return true
    }


    def uploadImage(Contact contact, HttpServletRequest request) {
        if (request.getFile("contactImage") && !request.getFile("contactImage").filename.equals("")){
            String image = FileUtil.uploadContactImage(contact.id, request.getFile("contactImage"))
            if (!image.equals("")){
                contact.image = image
                contact.save(flush:true)
            }
        }
    }
    

}
