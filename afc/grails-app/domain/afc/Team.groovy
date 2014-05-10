package afc

class Team {

	String name
	String shortName
	
    static	mapping = {
    }
    
	static	constraints = {
		name blank: false
    }
	
	static pictures = ['logo']
	
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${shortName}";
	}
}
