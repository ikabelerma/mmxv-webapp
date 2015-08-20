package mmxv.webapp

class EmployeeAward extends Award {
	EmployeeNomination nomination
	static belongsTo = [nominee : Employee]
	Integer pointsAwarded

    static constraints = {
		pointsAwarded blank : false 
    }
}
