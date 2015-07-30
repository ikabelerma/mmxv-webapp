package mmxv.webapp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TeamNominationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TeamNomination.list(params), model:[teamNominationInstanceCount: TeamNomination.count()]
    }

    def show(TeamNomination teamNominationInstance) {
        respond teamNominationInstance
    }

    def create() {
        respond new TeamNomination(params)
    }

    @Transactional
    def save(TeamNomination teamNominationInstance) {
        if (teamNominationInstance == null) {
            notFound()
            return
        }

        if (teamNominationInstance.hasErrors()) {
            respond teamNominationInstance.errors, view:'create'
            return
        }

        teamNominationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'teamNomination.label', default: 'TeamNomination'), teamNominationInstance.id])
                redirect teamNominationInstance
            }
            '*' { respond teamNominationInstance, [status: CREATED] }
        }
    }

    def edit(TeamNomination teamNominationInstance) {
        respond teamNominationInstance
    }

    @Transactional
    def update(TeamNomination teamNominationInstance) {
        if (teamNominationInstance == null) {
            notFound()
            return
        }

        if (teamNominationInstance.hasErrors()) {
            respond teamNominationInstance.errors, view:'edit'
            return
        }

        teamNominationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TeamNomination.label', default: 'TeamNomination'), teamNominationInstance.id])
                redirect teamNominationInstance
            }
            '*'{ respond teamNominationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TeamNomination teamNominationInstance) {

        if (teamNominationInstance == null) {
            notFound()
            return
        }

        teamNominationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TeamNomination.label', default: 'TeamNomination'), teamNominationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'teamNomination.label', default: 'TeamNomination'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
