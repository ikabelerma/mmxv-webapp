package mmxv.webapp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TeamAwardController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TeamAward.list(params), model:[teamAwardInstanceCount: TeamAward.count()]
    }

    def show(TeamAward teamAwardInstance) {
        respond teamAwardInstance
    }

    def create() {
        respond new TeamAward(params)
    }

    @Transactional
    def save(TeamAward teamAwardInstance) {
        if (teamAwardInstance == null) {
            notFound()
            return
        }

        if (teamAwardInstance.hasErrors()) {
            respond teamAwardInstance.errors, view:'create'
            return
        }

        teamAwardInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'teamAward.label', default: 'TeamAward'), teamAwardInstance.id])
                redirect teamAwardInstance
            }
            '*' { respond teamAwardInstance, [status: CREATED] }
        }
    }

    def edit(TeamAward teamAwardInstance) {
        respond teamAwardInstance
    }

    @Transactional
    def update(TeamAward teamAwardInstance) {
        if (teamAwardInstance == null) {
            notFound()
            return
        }

        if (teamAwardInstance.hasErrors()) {
            respond teamAwardInstance.errors, view:'edit'
            return
        }

        teamAwardInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TeamAward.label', default: 'TeamAward'), teamAwardInstance.id])
                redirect teamAwardInstance
            }
            '*'{ respond teamAwardInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TeamAward teamAwardInstance) {

        if (teamAwardInstance == null) {
            notFound()
            return
        }

        teamAwardInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TeamAward.label', default: 'TeamAward'), teamAwardInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'teamAward.label', default: 'TeamAward'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
