package mmxv.webapp

class Employee {
	
	String uid
	String firstName
	String lastName
	String emailAddress
	String mobileNumber
	Boolean isApprover
	
    static constraints = {
		uid blank: false, unique: true
		firstName blank: false
		lastName blank: false
		emailAddress blank: false, email : true 
		mobileNumber blank: false 
		isApprover blank : true
    }
}
