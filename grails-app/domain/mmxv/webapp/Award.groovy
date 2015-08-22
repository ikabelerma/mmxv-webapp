package mmxv.webapp

class Award {
	int pointsAwarded
	String remarks
	
    static constraints = {
		pointsAwarded blank: false
		remarks blank: true 
    }
}
