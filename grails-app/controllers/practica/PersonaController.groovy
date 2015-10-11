package practica

class PersonaController {
        def personaService
    def index() {
    List<Persona> personas=personaService.listaPersonas(params)
        render(view: 'index',model: [personas:personas])
    }

    def create(){
        render view:'create'

    }

    def guardar(){
        println params
        Persona persona=personaService.guardarPersona(params)

        detalle(persona.id)
    }

    def detalle(Long id){

        println id
    Persona persona=personaService.consultarPersona(id)
        println persona
    render view: 'detalle'
    }

    def detalle2(){
        println params
        Persona persona=personaService.consultarPersona(2)
        render view: 'detalle'
    }

        def eliminarPersona(Long id){
            Persona persona=personaService.eliminarPersona(id)
            render view: 'index'

        }



}
