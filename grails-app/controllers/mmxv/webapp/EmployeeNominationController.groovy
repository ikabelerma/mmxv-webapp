package mmxv.webapp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmployeeNominationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EmployeeNomination.list(params), model:[employeeNominationInstanceCount: EmployeeNomination.count()]
    }

    def show(EmployeeNomination employeeNominationInstance) {
        respond employeeNominationInstance
    }

    def create() {
        respond new EmployeeNomination(params)
    }

    @Transactional
    def save(EmployeeNomination employeeNominationInstance) {
        if (employeeNominationInstance == null) {
            notFound()
            return
        }

        if (employeeNominationInstance.hasErrors()) {
            respond employeeNominationInstance.errors, view:'create'
            return
        }

        employeeNominationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'employeeNomination.label', default: 'EmployeeNomination'), employeeNominationInstance.id])
                redirect employeeNominationInstance
            }
            '*' { respond employeeNominationInstance, [status: CREATED] }
        }
    }

    def edit(EmployeeNomination employeeNominationInstance) {
        respond employeeNominationInstance
    }

    @Transactional
    def update(EmployeeNomination employeeNominationInstance) {
        if (employeeNominationInstance == null) {
            notFound()
            return
        }

        if (employeeNominationInstance.hasErrors()) {
            respond employeeNominationInstance.errors, view:'edit'
            return
        }

        employeeNominationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'EmployeeNomination.label', default: 'EmployeeNomination'), employeeNominationInstance.id])
                redirect employeeNominationInstance
            }
            '*'{ respond employeeNominationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(EmployeeNomination employeeNominationInstance) {

        if (employeeNominationInstance == null) {
            notFound()
            return
        }

        employeeNominationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'EmployeeNomination.label', default: 'EmployeeNomination'), employeeNominationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'employeeNomination.label', default: 'EmployeeNomination'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
