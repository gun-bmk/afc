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
	
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${shortName}";
	}
}
