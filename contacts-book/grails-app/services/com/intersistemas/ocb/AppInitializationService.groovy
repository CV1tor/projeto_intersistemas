package com.intersistemas.ocb

class AppInitializationService {
    static initialize() {
        initMember()
    }

    private static initMember() {
        if (Member.count() == 0) {
            Member member = new Member()
            member.firstName = "admin"
            member.email = "admin@mail.com"
            member.password = "123"
            member.memberType = GlobalConfig.USER_TYPE.ADMIN
            member.save(flash:true)
        }
    }
}
