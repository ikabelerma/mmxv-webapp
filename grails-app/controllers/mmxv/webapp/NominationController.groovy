package mmxv.webapp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class NominationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Nomination.list(params), model:[nominationInstanceCount: Nomination.count()]
    }

    def show(Nomination nominationInstance) {
        respond nominationInstance
    }

    def create() {
        respond new Nomination(params)
    }

    @Transactional
    def save(Nomination nominationInstance) {
        if (nominationInstance == null) {
            notFound()
            return
        }

        if (nominationInstance.hasErrors()) {
            respond nominationInstance.errors, view:'create'
            return
        }

        nominationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'nomination.label', default: 'Nomination'), nominationInstance.id])
                redirect nominationInstance
            }
            '*' { respond nominationInstance, [status: CREATED] }
        }
    }

    def edit(Nomination nominationInstance) {
        respond nominationInstance
    }

    @Transactional
    def update(Nomination nominationInstance) {
        if (nominationInstance == null) {
            notFound()
            return
        }

        if (nominationInstance.hasErrors()) {
            respond nominationInstance.errors, view:'edit'
            return
        }

        nominationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Nomination.label', default: 'Nomination'), nominationInstance.id])
                redirect nominationInstance
            }
            '*'{ respond nominationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Nomination nominationInstance) {

        if (nominationInstance == null) {
            notFound()
            return
        }

        nominationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Nomination.label', default: 'Nomination'), nominationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'nomination.label', default: 'Nomination'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
