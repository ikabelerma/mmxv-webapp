package mmxv.webapp

class Award {
	Nomination nomination
	static belongsTo = [nominee : Employee]
	Integer pointsAwarded
	String remarks
	
    static constraints = {
		pointsAwarded blank: false
		remarks blank: true 
    }
}
