import com.mongodb.*


class BootStrap {

    def mongo
    
    def init = { servletContext ->

        def db = mongo.getDB("grails-mongodb-elastic")
        if(db.collectionExists("feeddisplay")) {
            System.out.println(" hello ");
        }
    }
    def destroy = {
    }
}
