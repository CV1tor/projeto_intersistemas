package com.intersistemas.ocb

class GlobalConfig {
    public static final def USER_TYPE = [
            ADMIN         : "ADMIN",
            REGULAR_MEMBER: "REGULAR_MEMBER"
    ]

    public static Integer itemsPerPage() {
        return 5
    }

}