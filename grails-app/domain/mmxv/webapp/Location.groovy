package mmxv.webapp

class Location {
	String name
	Integer pointsRequired
	String perks

    static constraints = {
		name blank: false, unique : true
		perks blank: true
    }
	
	String toString(){
		return this.name
	}
}
