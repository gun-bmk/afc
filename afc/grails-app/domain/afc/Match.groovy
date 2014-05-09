package afc

import org.joda.time.*

class Match {
	
	LocalDateTime date
	String place
	
	static belongsTo = [home: Team, away: Team]
	
	static hasMany = [comments: Comment, commentators: MatchCommentator]
	
    static	mapping = {
    }
    
	static	constraints = {
		home nullable: false
		away nullable: false
    }
	
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${home} vs ${away}";
	}
}
