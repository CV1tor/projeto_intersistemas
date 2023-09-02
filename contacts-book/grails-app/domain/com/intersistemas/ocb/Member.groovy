package com.intersistemas.ocb

class Member {

    Integer id;
    String firstName;
    String lastName;
    String email;
    String password;
    String identityHash;
    Date identityHashLastUpdate;
    Boolean isActive = true;

    Date dateCreated;
    Date lastUpdated;

    String memberType = GlobalConfig.USER_TYPE.REGULAR_MEMBER


    static constraints = {
        email (email: true, nullable: false, unique: true, blank: false)
        password (blank: false)
        lastName(nullable: true)
        identityHash(nullable: true)
        identityHashLastUpdate(nullable: true)
    }

    def beforeInsert() {
        this.password = this.password.encodeAsMD5();
    }

      def beforeUpdate() {
        this.password = this.password.encodeAsMD5();
    }

}