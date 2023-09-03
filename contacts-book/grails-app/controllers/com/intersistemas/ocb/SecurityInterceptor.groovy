package com.intersistemas.ocb

class SecurityInterceptor {
    AuthenticationService authenticationService;

    SecurityInterceptor() {
        matchAll().excludes(controller: "authentication")
    }

    boolean before() {
        if (!authenticationService.isAuthenticated()) {
            redirect(controller: "authentication", action: "login")
        }

        return true
    }
}
