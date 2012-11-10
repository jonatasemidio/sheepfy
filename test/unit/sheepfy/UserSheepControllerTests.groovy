package sheepfy



import org.junit.*
import grails.test.mixin.*

@TestFor(UserSheepController)
@Mock(UserSheep)
class UserSheepControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/userSheep/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.userSheepInstanceList.size() == 0
        assert model.userSheepInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.userSheepInstance != null
    }

    void testSave() {
        controller.save()

        assert model.userSheepInstance != null
        assert view == '/userSheep/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/userSheep/show/1'
        assert controller.flash.message != null
        assert UserSheep.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/userSheep/list'

        populateValidParams(params)
        def userSheep = new UserSheep(params)

        assert userSheep.save() != null

        params.id = userSheep.id

        def model = controller.show()

        assert model.userSheepInstance == userSheep
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/userSheep/list'

        populateValidParams(params)
        def userSheep = new UserSheep(params)

        assert userSheep.save() != null

        params.id = userSheep.id

        def model = controller.edit()

        assert model.userSheepInstance == userSheep
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/userSheep/list'

        response.reset()

        populateValidParams(params)
        def userSheep = new UserSheep(params)

        assert userSheep.save() != null

        // test invalid parameters in update
        params.id = userSheep.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/userSheep/edit"
        assert model.userSheepInstance != null

        userSheep.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/userSheep/show/$userSheep.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        userSheep.clearErrors()

        populateValidParams(params)
        params.id = userSheep.id
        params.version = -1
        controller.update()

        assert view == "/userSheep/edit"
        assert model.userSheepInstance != null
        assert model.userSheepInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/userSheep/list'

        response.reset()

        populateValidParams(params)
        def userSheep = new UserSheep(params)

        assert userSheep.save() != null
        assert UserSheep.count() == 1

        params.id = userSheep.id

        controller.delete()

        assert UserSheep.count() == 0
        assert UserSheep.get(userSheep.id) == null
        assert response.redirectedUrl == '/userSheep/list'
    }
}
