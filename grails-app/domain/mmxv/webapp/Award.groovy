package mmxv.webapp

class Award {
	Integer pointsAwarded
	String remarks
	
    static constraints = {
		pointsAwarded blank: false
		remarks blank: true 
    }
}
