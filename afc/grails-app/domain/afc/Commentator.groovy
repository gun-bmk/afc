package afc

class Commentator {

	String name
	String email
	byte[] image
	
	static hasMany = [matchs: Match]
	
    static	mapping = {
    }
    
	static	constraints = {
		name blank: false
		image nullable: true
    }
	
}
