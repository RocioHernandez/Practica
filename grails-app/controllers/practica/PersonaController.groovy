package practica

import org.springframework.format.annotation.DateTimeFormat
import org.springframework.format.datetime.joda.DateTimeFormatterFactory

import java.text.SimpleDateFormat

class PersonaController {
        def personaService
    def index() {
        params.max =Math.min(params.max ? params.int('max'):3,100)
        println("offset")
        println(params.offset)
        if(!params.offset)
            params.offset=0

        def mapa=personaService.listaPersonas(params)
        println(params.offset)
        if(params.offset)
            render (template: 'listaPersonas', ,model: [personas:mapa.listaPersonas, totalPerrsonas:mapa.totalPersonas, params:params])
        else
            render(view: 'index',model: [personas:mapa.listaPersonas, totalPerrsonas:mapa.totalPersonas, params:params])
        println("index")

    }

    def create(){
        render view:'create'

    }

    def guardar(){
        println params
        Persona persona=personaService.guardarPersona(params)

        index()
    }

    def detalle(Long id){
println("en detalle")
        println id
    Persona persona=personaService.consultarPersona(id)
        println persona
    render view: 'detalle', model:[persona: persona]
    }

    def detalle2(){
        println ("en controller")
        println params
        Persona persona=personaService.consultarPersona(params.id)
        println("persona" + persona)
        render (view: 'detalle', model:[persona: persona])
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
