package mmxv.webapp

class TeamNomination extends Nomination {
	static belongsTo = [nominee : Team]

    static constraints = {
		nominee blank :  false
    }
	
	String toString() {
		return this.criteria
	}
}
