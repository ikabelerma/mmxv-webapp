package mmxv.webapp

class Award {
<<<<<<< HEAD
	Nomination nomination
	static belongsTo = [nominee : Employee]
	Integer pointsAwarded
	String remarks

    static constraints = {
		pointsAwarded unique:false 
		remarks blank: true,  maxSize : 1000
=======
	Integer pointsAwarded
	String remarks
	
    static constraints = {
		pointsAwarded blank: false
		remarks blank: true 
>>>>>>> awards
    }
}
