package mmxv.webapp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AwardController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Award.list(params), model:[awardInstanceCount: Award.count()]
    }

    def show(Award awardInstance) {
        respond awardInstance
    }

    def create() {
        respond new Award(params)
    }

    @Transactional
    def save(Award awardInstance) {
        if (awardInstance == null) {
            notFound()
            return
        }

        if (awardInstance.hasErrors()) {
            respond awardInstance.errors, view:'create'
            return
        }

        awardInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'award.label', default: 'Award'), awardInstance.id])
                redirect awardInstance
            }
            '*' { respond awardInstance, [status: CREATED] }
        }
    }

    def edit(Award awardInstance) {
        respond awardInstance
    }

    @Transactional
    def update(Award awardInstance) {
        if (awardInstance == null) {
            notFound()
            return
        }

        if (awardInstance.hasErrors()) {
            respond awardInstance.errors, view:'edit'
            return
        }

        awardInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Award.label', default: 'Award'), awardInstance.id])
                redirect awardInstance
            }
            '*'{ respond awardInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Award awardInstance) {

        if (awardInstance == null) {
            notFound()
            return
        }

        awardInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Award.label', default: 'Award'), awardInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'award.label', default: 'Award'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
