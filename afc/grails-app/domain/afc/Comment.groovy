package afc

import org.joda.time.LocalDateTime

class Comment {

	String comment
	String authorName
	LocalDateTime timeStamp
	int likeCount = 0
	boolean topComment = false
	
	static belongsTo = [match :Match]
	
    static	mapping = {
    }
    
	static	constraints = {
		comment blank: false
    }
}
