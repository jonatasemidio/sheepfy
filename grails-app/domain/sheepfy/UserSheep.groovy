package sheepfy

class UserSheep {
	String name
	String login
	String password
	String email
	String type

    def toString = {
        this.name

    }

    static constraints = {
    	name blank: false
    	login blank: false
    	password blank: false
    	email blank: false
    	type blank: false

    	type inList: ['seller', 'buyer']
    }
}
