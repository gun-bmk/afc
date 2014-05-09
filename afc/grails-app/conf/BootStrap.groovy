import afc.*
import grails.util.Environment

class BootStrap {
	def fixtureLoader
	
    def init = { servletContext ->
		
		Environment.current.executeForCurrentEnvironment {
			development {
				fixtureLoader.load("data")
			}
		}
    }
    def destroy = {
    }
}
