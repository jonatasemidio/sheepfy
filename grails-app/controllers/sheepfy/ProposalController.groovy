package sheepfy

import org.springframework.dao.DataIntegrityViolationException

class ProposalController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [proposalInstanceList: Proposal.list(params), proposalInstanceTotal: Proposal.count()]
    }

    def create() {
        [proposalInstance: new Proposal(params)]
    }

    def save() {
        def proposalInstance = new Proposal(params)
        if (!proposalInstance.save(flush: true)) {
            render(view: "create", model: [proposalInstance: proposalInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'proposal.label', default: 'Proposal'), proposalInstance.id])
        redirect(action: "show", id: proposalInstance.id)
    }

    def show(Long id) {
        def proposalInstance = Proposal.get(id)
        if (!proposalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'proposal.label', default: 'Proposal'), id])
            redirect(action: "list")
            return
        }

        [proposalInstance: proposalInstance]
    }

    def edit(Long id) {
        def proposalInstance = Proposal.get(id)
        if (!proposalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'proposal.label', default: 'Proposal'), id])
            redirect(action: "list")
            return
        }

        [proposalInstance: proposalInstance]
    }

    def update(Long id, Long version) {
        def proposalInstance = Proposal.get(id)
        if (!proposalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'proposal.label', default: 'Proposal'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (proposalInstance.version > version) {
                proposalInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'proposal.label', default: 'Proposal')] as Object[],
                          "Another user has updated this Proposal while you were editing")
                render(view: "edit", model: [proposalInstance: proposalInstance])
                return
            }
        }

        proposalInstance.properties = params

        if (!proposalInstance.save(flush: true)) {
            render(view: "edit", model: [proposalInstance: proposalInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'proposal.label', default: 'Proposal'), proposalInstance.id])
        redirect(action: "show", id: proposalInstance.id)
    }

    def delete(Long id) {
        def proposalInstance = Proposal.get(id)
        if (!proposalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'proposal.label', default: 'Proposal'), id])
            redirect(action: "list")
            return
        }

        try {
            proposalInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'proposal.label', default: 'Proposal'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'proposal.label', default: 'Proposal'), id])
            redirect(action: "show", id: id)
        }
    }
}
