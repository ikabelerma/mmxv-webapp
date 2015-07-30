package mmxv.webapp

class Nomination {
	String justification
	Criteria criteria
	
    static constraints = {

		criteria blank : false
		justification blank: false, maxSize : 1000
    }
	
}
