import mmxv.webapp.Criteria
import mmxv.webapp.Employee
import mmxv.webapp.Location
import mmxv.webapp.Team

class BootStrap {

    def init = { servletContext ->
        new Team (name: "Power Express Optimization").save(flush:true, failOnError: true)
        new Criteria (name: "Voice of the Customer", maxPoints : 100).save(flush:true, failOnError: true)
        def location = new Location(name: "Makati", pointsRequired: 100, perks: "abcde").save(flush:true, failOnError: true)
		new Location(name: "Vigan", pointsRequired: 200, perks: "Free Bagnet")
        new Employee (
             uid: "UEXB524",
             firstName: "Ika", 
             lastName: "Belerma", 
             emailAddress: "ebelerma@carlsonwagonlit.com", 
             mobileNumber: "639989701909", 
             isApprover: false,
             location: location).save(flush: true, failOnError:true)
		new Employee (
				 uid: "UAVG321",
				 firstName: "Ai",
				 lastName: "Guamos",
				 emailAddress: "aguamos@carlsonwagonlit.com",
				 mobileNumber: "63998999999",
				 isApprover: true,
				 location: location).save(flush: true, failOnError:true)
    }
    
    def destroy = {
    }
}
