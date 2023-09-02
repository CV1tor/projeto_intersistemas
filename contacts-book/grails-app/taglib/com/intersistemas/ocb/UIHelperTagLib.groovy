package com.intersistemas.ocb

class UIHelperTagLib {
    static namespace = "UIHelper"

    def renderErrorMessage = {attrs, body ->
        def model = attrs.model
        String fieldName = attrs.fieldName
        String errorMessage = attrs.errorMessage ? g.message(code: attrs.errorMessage) : g.message(code: "invalid.input")
        if (model && model.errors && model.errors.getFieldError(fieldName)) {
            out << "<small class='form-text text-danger mb-3'><strong>${errorMessage}</strong></small> "
        }
    }
}
