package afc

/**
 * MtmTagLib
 * A taglib library provides a set of reusable tags to help rendering the views.
 */
class AfcTagLib {
    static defaultEncodeAs = 'text'
	
    
	def domainImage = {attrs, body ->
		if(attrs.bean."${attrs.name}"){
			def extraParams = ""
			if(attrs.width){
				extraParams += " width = \"${attrs.width}\""
			}
			if(attrs.height){
				extraParams += " height = \"${attrs.height}\""
			}
			out << "<img src=\"${g.createLink(controller: 'backend', action: 'loadImage', params: [domain: attrs.bean.getClass().simpleName, name: attrs.name, id: attrs.bean.id])}\" ${extraParams}/>"
		}
	}
}