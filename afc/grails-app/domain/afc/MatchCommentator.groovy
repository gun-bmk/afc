package afc

class MatchCommentator {
	
	static belongsTo = [commentator :Commentator, match: Match]

    static	mapping = {
    }
    
	static	constraints = {
    }
	
}
