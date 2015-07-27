package mmxv.webapp

class Team {
	String name
	static hasMany = [members : Employee]
	
    static constraints = {
		name blank: false, unique: true
    }
	
	String toString() {
		return this.name;
	}
}
