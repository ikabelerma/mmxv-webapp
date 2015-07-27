package mmxv.webapp

class Nomination {
	static belongsTo = [nominee : Employee]
	String justification
	Criteria criteria
	
    static constraints = {
		nominee blank : false
		criteria blank : false
		justification blank: false, maxSize : 1000
    }
	
}
