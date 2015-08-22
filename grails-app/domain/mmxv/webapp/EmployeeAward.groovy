package mmxv.webapp

class EmployeeAward extends Award {
	EmployeeNomination nomination
	static belongsTo = [nominee : Employee]

    static constraints = {
    }
}
