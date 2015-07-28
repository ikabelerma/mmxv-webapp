package mmxv.webapp

class Award {
	Nomination nomination
	static belongsTo = [nominee : Employee]
	Integer pointsAwarded
	String remarks

    static constraints = {
		pointsAwarded unique:false 
		remarks blank: true,  maxSize : 1000
    }
}
