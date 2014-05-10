package afc

class Commentator {

	String name
	String email
	byte[]  image
	
	static hasMany = [matchs: MatchCommentator]
	
    static	mapping = {
    }
    
	static	constraints = {
		name blank: false
		email nullable: true
		image size: 1..10*1024*1024
    }
	
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${name }";
	}
	
}
