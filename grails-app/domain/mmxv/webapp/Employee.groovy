package mmxv.webapp

class Employee {
	
	String uid
	String firstName
	String lastName
	String emailAddress
	String mobileNumber
	Boolean isApprover
	static belongsTo = Team
	static hasMany = [teams : Team, nominations : EmployeeNomination, awards : EmployeeAward]
		
    static constraints = {
		uid blank: false, unique: true
		firstName blank: false
		lastName blank: false
		emailAddress blank: false, email : true 
		mobileNumber blank: false 
		isApprover blank : true
    }
	
	def computeTotalPoints() {
		def total = this.awards.sum { it.pointsAwarded }
		return total
	}
	
	String toString() {
		return this.lastName + ", " + this.firstName
	}
}
