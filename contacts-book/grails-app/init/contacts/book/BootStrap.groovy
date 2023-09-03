package contacts.book

import com.intersistemas.ocb.AppInitializationService


class BootStrap {

    def init = { servletContext ->
        AppInitializationService.initialize()
       
    }
    def destroy = {
    }
}
