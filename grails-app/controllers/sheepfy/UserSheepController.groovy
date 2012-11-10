package sheepfy

import org.springframework.dao.DataIntegrityViolationException

class UserSheepController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [userSheepInstanceList: UserSheep.list(params), userSheepInstanceTotal: UserSheep.count()]
    }

    def create() {
        [userSheepInstance: new UserSheep(params)]
    }

    def save() {
        def userSheepInstance = new UserSheep(params)
        if (!userSheepInstance.save(flush: true)) {
            render(view: "create", model: [userSheepInstance: userSheepInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'userSheep.label', default: 'UserSheep'), userSheepInstance.id])
        redirect(action: "show", id: userSheepInstance.id)
    }

    def show(Long id) {
        def userSheepInstance = UserSheep.get(id)
        if (!userSheepInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'userSheep.label', default: 'UserSheep'), id])
            redirect(action: "list")
            return
        }

        [userSheepInstance: userSheepInstance]
    }

    def edit(Long id) {
        def userSheepInstance = UserSheep.get(id)
        if (!userSheepInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'userSheep.label', default: 'UserSheep'), id])
            redirect(action: "list")
            return
        }

        [userSheepInstance: userSheepInstance]
    }

    def update(Long id, Long version) {
        def userSheepInstance = UserSheep.get(id)
        if (!userSheepInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'userSheep.label', default: 'UserSheep'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (userSheepInstance.version > version) {
                userSheepInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'userSheep.label', default: 'UserSheep')] as Object[],
                          "Another user has updated this UserSheep while you were editing")
                render(view: "edit", model: [userSheepInstance: userSheepInstance])
                return
            }
        }

        userSheepInstance.properties = params

        if (!userSheepInstance.save(flush: true)) {
            render(view: "edit", model: [userSheepInstance: userSheepInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'userSheep.label', default: 'UserSheep'), userSheepInstance.id])
        redirect(action: "show", id: userSheepInstance.id)
    }

    def delete(Long id) {
        def userSheepInstance = UserSheep.get(id)
        if (!userSheepInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'userSheep.label', default: 'UserSheep'), id])
            redirect(action: "list")
            return
        }

        try {
            userSheepInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'userSheep.label', default: 'UserSheep'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'userSheep.label', default: 'UserSheep'), id])
            redirect(action: "show", id: id)
        }
    }
}
