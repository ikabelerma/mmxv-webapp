package mmxv.webapp

class Criteria {
	String name
	Integer maxPoints
	
    static constraints = {
		name blank:false, unique : true
		maxPoints nullable: true 
    }
	
	String toString() {
		return this.name	
	};
}
