package sheepfy



import org.junit.*
import grails.test.mixin.*

@TestFor(ProposalController)
@Mock(Proposal)
class ProposalControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/proposal/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.proposalInstanceList.size() == 0
        assert model.proposalInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.proposalInstance != null
    }

    void testSave() {
        controller.save()

        assert model.proposalInstance != null
        assert view == '/proposal/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/proposal/show/1'
        assert controller.flash.message != null
        assert Proposal.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/proposal/list'

        populateValidParams(params)
        def proposal = new Proposal(params)

        assert proposal.save() != null

        params.id = proposal.id

        def model = controller.show()

        assert model.proposalInstance == proposal
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/proposal/list'

        populateValidParams(params)
        def proposal = new Proposal(params)

        assert proposal.save() != null

        params.id = proposal.id

        def model = controller.edit()

        assert model.proposalInstance == proposal
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/proposal/list'

        response.reset()

        populateValidParams(params)
        def proposal = new Proposal(params)

        assert proposal.save() != null

        // test invalid parameters in update
        params.id = proposal.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/proposal/edit"
        assert model.proposalInstance != null

        proposal.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/proposal/show/$proposal.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        proposal.clearErrors()

        populateValidParams(params)
        params.id = proposal.id
        params.version = -1
        controller.update()

        assert view == "/proposal/edit"
        assert model.proposalInstance != null
        assert model.proposalInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/proposal/list'

        response.reset()

        populateValidParams(params)
        def proposal = new Proposal(params)

        assert proposal.save() != null
        assert Proposal.count() == 1

        params.id = proposal.id

        controller.delete()

        assert Proposal.count() == 0
        assert Proposal.get(proposal.id) == null
        assert response.redirectedUrl == '/proposal/list'
    }
}
