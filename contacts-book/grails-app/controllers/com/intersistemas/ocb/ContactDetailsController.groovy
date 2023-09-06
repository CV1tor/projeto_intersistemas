package com.intersistemas.ocb

import grails.converters.JSON

class ContactDetailsController {
    ContactService contactService
    ContactDetailsService contactDetailsService

    def create() {
        Contact contact = contactService.get(params.id)
        [contactDetails: contactDetailsService.getContactDetailsListByContact(contact)]
    }

    def delete() {
        render(contactDetailsService.deleteContactDetails(id) as JSON)
    }
}
