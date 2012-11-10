package sheepfy

class Product {
	String name
	double price
	String description
	static belongsTo = [userSheep: UserSheep]

    static constraints = {
    	name blank: false

    }
}
