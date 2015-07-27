import mmxv.webapp.Criteria
import mmxv.webapp.Employee
import mmxv.webapp.Team

class BootStrap {

    def init = { servletContext ->
		new Team (name: "Power Express Optimization").save()
		new Criteria (name: "Voice of the Customer", maxPoints : 100).save()
		new Employee (
			 uid: "UEXB524",
			 firstName: "Ika", 
			 lastName: "Belerma", 
			 emailAddress: "ebelerma@carlsonwagonlit.com", 
			 mobileNumber: "639989701909", 
			 isApprover: false).save()
    }
    def destroy = {
    }
}
