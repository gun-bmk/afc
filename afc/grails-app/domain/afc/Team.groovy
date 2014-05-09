package afc

class Team {

	String name
	String shortName
	byte[] logo
	
    static	mapping = {
    }
    
	static	constraints = {
		name blank: false
		logo nullable: true
    }
	
}
