package mmxv.webapp

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Employee)
class EmployeeSpec extends Specification {
	Employee employee
	Criteria criteria
	
    def setup() {
		employee = new Employee(uid: "UEXB524",
			firstName : "Ika", 
			lastName: "Belerma", 
			email : "ebelerma@carlsonwagonlit.com", 
			mobileNumber : "+639989701909",
			isApprover: false)
		criteria = new Criteria(name: "Voice of the Customer",
			maxPoints: 20)
    }

    def cleanup() {
    }

    void "Should Compute Total Awarded Points"() {
		setup:
			def nomination = new EmployeeNomination (nominee: employee, criteria: criteria, justification: "Yeah!1")
			def award = new EmployeeAward (nomination : nomination, pointsAwarded: 100)
					
		when:
			def total = employee.computeTotalPoints()
		
		then:
		println total
		total == 0
    }
}
