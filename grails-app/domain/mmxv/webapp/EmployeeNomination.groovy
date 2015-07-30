package mmxv.webapp

class EmployeeNomination extends Nomination {
	EmployeeNomination nomination
	static belongsTo = [nominee : Employee]

    static constraints = {
		nominee blank : false
		
    }
	
	String toString() {
		return this.criteria
	}
}
