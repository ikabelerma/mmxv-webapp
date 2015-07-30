package mmxv.webapp

class Team {
	String name
	static hasMany = [members : Employee, nominations : TeamNomination]
	
    static constraints = {
		name blank: false, unique: true
    }
	
	String toString() {
		return this.name;
	}
}
