package jvents



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EventGenreController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EventGenre.list(params), model:[eventGenreInstanceCount: EventGenre.count()]
    }

    def show(EventGenre eventGenreInstance) {
        respond eventGenreInstance
    }

    def create() {
        respond new EventGenre(params)
    }

    @Transactional
    def save(EventGenre eventGenreInstance) {
        if (eventGenreInstance == null) {
            notFound()
            return
        }

        if (eventGenreInstance.hasErrors()) {
            respond eventGenreInstance.errors, view:'create'
            return
        }

        eventGenreInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'eventGenreInstance.label', default: 'EventGenre'), eventGenreInstance.id])
                redirect eventGenreInstance
            }
            '*' { respond eventGenreInstance, [status: CREATED] }
        }
    }

    def edit(EventGenre eventGenreInstance) {
        respond eventGenreInstance
    }

    @Transactional
    def update(EventGenre eventGenreInstance) {
        if (eventGenreInstance == null) {
            notFound()
            return
        }

        if (eventGenreInstance.hasErrors()) {
            respond eventGenreInstance.errors, view:'edit'
            return
        }

        eventGenreInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'EventGenre.label', default: 'EventGenre'), eventGenreInstance.id])
                redirect eventGenreInstance
            }
            '*'{ respond eventGenreInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(EventGenre eventGenreInstance) {

        if (eventGenreInstance == null) {
            notFound()
            return
        }

        eventGenreInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'EventGenre.label', default: 'EventGenre'), eventGenreInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'eventGenreInstance.label', default: 'EventGenre'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
