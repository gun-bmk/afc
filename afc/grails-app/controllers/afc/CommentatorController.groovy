package afc



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CommentatorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Commentator.list(params), model:[commentatorInstanceCount: Commentator.count()]
    }

    def show(Commentator commentatorInstance) {
        respond commentatorInstance
    }

    def create() {
        respond new Commentator(params)
    }

    @Transactional
    def save(Commentator commentatorInstance) {
        if (commentatorInstance == null) {
            notFound()
            return
        }

        if (commentatorInstance.hasErrors()) {
            respond commentatorInstance.errors, view:'create'
            return
        }

        commentatorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'commentator.label', default: 'Commentator'), commentatorInstance.id])
                redirect commentatorInstance
            }
            '*' { respond commentatorInstance, [status: CREATED] }
        }
    }

    def edit(Commentator commentatorInstance) {
        respond commentatorInstance
    }

    @Transactional
    def update(Commentator commentatorInstance) {
        if (commentatorInstance == null) {
            notFound()
            return
        }

        if (commentatorInstance.hasErrors()) {
            respond commentatorInstance.errors, view:'edit'
            return
        }

        commentatorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Commentator.label', default: 'Commentator'), commentatorInstance.id])
                redirect commentatorInstance
            }
            '*'{ respond commentatorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Commentator commentatorInstance) {

        if (commentatorInstance == null) {
            notFound()
            return
        }

        commentatorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Commentator.label', default: 'Commentator'), commentatorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }
	
	def loadImage(Long id, Boolean thumbnail){
//		def data = backendService.makePictureFile(domain, id, name)
//		if(thumbnail){
//			def img =  ImageIO.read(data)
//			img = Scalr.resize(img, Scalr.Method.SPEED, Scalr.Mode.AUTOMATIC, 200, 200, null);
//			
//			Metadata metadata = ImageMetadataReader.readMetadata(data)
//			def exifIFD0Directory = metadata.getDirectory(ExifIFD0Directory.class);
//			if(exifIFD0Directory && exifIFD0Directory.containsTag(ExifIFD0Directory.TAG_ORIENTATION))
//			{
//				int exifOrientation = exifIFD0Directory.getInt(ExifIFD0Directory.TAG_ORIENTATION);
//				def rotation
//				switch(exifOrientation){
//					case 3: rotation = Scalr.Rotation.CW_180; break
//					case 6: rotation = Scalr.Rotation.CW_90; break
//					case 8: rotation = Scalr.Rotation.CW_270; break
//					
//				}
//				if(rotation){
//					img = Scalr.rotate(img, rotation, Scalr.OP_ANTIALIAS)
//				}
//			}
//			
//			
//			data = bi2bytes(img)
//		}
		
		
		
		render(file: Commentator.get(id).image, contentType: "image/jpeg")
	}

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'commentator.label', default: 'Commentator'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
