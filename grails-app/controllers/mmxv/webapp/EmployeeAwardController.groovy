package mmxv.webapp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmployeeAwardController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EmployeeAward.list(params), model:[employeeAwardInstanceCount: EmployeeAward.count()]
    }

    def show(EmployeeAward employeeAwardInstance) {
        respond employeeAwardInstance
    }

    def create() {
        respond new EmployeeAward(params)
    }

    @Transactional
    def save(EmployeeAward employeeAwardInstance) {
        if (employeeAwardInstance == null) {
            notFound()
            return
        }

        if (employeeAwardInstance.hasErrors()) {
            respond employeeAwardInstance.errors, view:'create'
            return
        }

        employeeAwardInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'employeeAward.label', default: 'EmployeeAward'), employeeAwardInstance.id])
                redirect employeeAwardInstance
            }
            '*' { respond employeeAwardInstance, [status: CREATED] }
        }
    }

    def edit(EmployeeAward employeeAwardInstance) {
        respond employeeAwardInstance
    }

    @Transactional
    def update(EmployeeAward employeeAwardInstance) {
        if (employeeAwardInstance == null) {
            notFound()
            return
        }

        if (employeeAwardInstance.hasErrors()) {
            respond employeeAwardInstance.errors, view:'edit'
            return
        }

        employeeAwardInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'EmployeeAward.label', default: 'EmployeeAward'), employeeAwardInstance.id])
                redirect employeeAwardInstance
            }
            '*'{ respond employeeAwardInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(EmployeeAward employeeAwardInstance) {

        if (employeeAwardInstance == null) {
            notFound()
            return
        }

        employeeAwardInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'EmployeeAward.label', default: 'EmployeeAward'), employeeAwardInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'employeeAward.label', default: 'EmployeeAward'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
