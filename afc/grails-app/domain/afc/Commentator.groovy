package afc

class Commentator {

	String name
	String email
	byte[] image
	
	static hasMany = [matchs: MatchCommentator]
	
    static	mapping = {
    }
    
	static	constraints = {
		name blank: false
		email nullable: true
		image nullable: true, size: 0..819200
    }
	
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${name }";
	}
	
}
