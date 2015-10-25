package practica

import org.springframework.format.annotation.DateTimeFormat
import org.springframework.format.datetime.joda.DateTimeFormatterFactory

import java.text.SimpleDateFormat

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

    def buscarFEcha(){
        println(params)
        SimpleDateFormat formato=new SimpleDateFormat("dd/MM/yyyy h:mm a")

        def fechaInicio=params.fecha +" 0:00 am"
        def fechaFin=params.fecha +" 11:59 pm"

        println("fecha inicio ${formato.parse(fechaInicio)}")
        println(formato.parse(fechaFin))

        List<Persona> personas =Persona.findAllByFechaNacimientoBetween(formato.parse(fechaInicio), formato.parse(fechaFin))
        println(personas.size())
        redirect(action: 'index')



    }

    def cambiarFiltro(){
        println(params)
        def opcion=params.opcion

        render (template: 'tipoBusqueda', model: [opcion:opcion])
    }

    def buscarPorRangoFecha(){
        println(params)
        SimpleDateFormat formato=new SimpleDateFormat("dd/MM/yyyy h:mm a")

        def fechaInicio=params.fechaIni +" 0:00 am"
        def fechaFin=params.fechaFin +" 11:59 pm"

        println("fecha inicio ${formato.parse(fechaInicio)}")
        println(formato.parse(fechaFin))

        List<Persona> personas =Persona.findAllByFechaNacimientoBetween(formato.parse(fechaInicio), formato.parse(fechaFin))
        println(personas.size())
        render(view: 'index',model: [personas:personas])



    }

    def buscarPorNombre(){
        println(params)



        List<Persona> personas =Persona.findAllByNombre(params.nombre)
        println(personas.size())
        render(view: 'index',model: [personas:personas])



    }

    def buscarPorApellidoPaterno(){
        println(params)

        List<Persona> personas =Persona.findAllByApellidoPaterno(params.apellidoPaterno)
        println(personas.size())
        render(view: 'index',model: [personas:personas])
    }

    def buscarPorApellidoMaterno(){
        println(params)

        List<Persona> personas =Persona.findAllByApellidoMaterno(params.apellidoMaterno)
        println(personas.size())
        render(view: 'index',model: [personas:personas])
    }




}
