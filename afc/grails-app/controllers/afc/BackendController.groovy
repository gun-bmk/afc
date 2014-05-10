package afc

class BackendController {
	def grailsApplication
	
	def loadImage(String domain, String name, Long id, Boolean thumbnail){
				def domainClass = grailsApplication.domainClasses.find { it.clazz.simpleName == domain }
				def instance = domainClass.clazz.get(id)
				render(file: instance."${name}", contentType: "image/jpeg")
			}
}
