package com.intersistemas.ocb

import grails.util.Holders
import org.springframework.web.multipart.MultipartFile

class FileUtil {

    public static String getRootPath(){
        return Holders.servletContext?.getRealPath("")
    }


    public static File makeDirectory(String path){
        File file = new File(path)
        if (!file.exists()){
            file.mkdirs()
        }
        return file
    }

    public static String uploadContactImage(Integer contactId, MultipartFile multipartFile){
        if (contactId && multipartFile){
            String contactImagePath = "${getRootPath()}contact-image/"

            makeDirectory(contactImagePath)
            multipartFile.transferTo(new File(contactImagePath, contactId + "-" + multipartFile.originalFilename))
            return multipartFile.originalFilename
        }
        return ""
    }

    public static boolean deleteContactImage(Integer contactId, String contactImage) {
        String contactImagePath = "${getRootPath()}contact-image/"
        String contactImageFileName = "${contactId}-${contactImage}"


       makeDirectory(contactImagePath).eachFile {file -> if (file.getName().equals(contactImageFileName)) {file.delete()}}

        return false
    }


}