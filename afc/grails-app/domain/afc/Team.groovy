package afc

class Team {

	String name
	String shortName
	byte[] logo
	
    static	mapping = {
    }
    
	static	constraints = {
		name blank: false
		logo size: 1..10*1024*1024
    }
	
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${shortName}";
	}
}
