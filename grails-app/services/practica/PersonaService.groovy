package practica

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap
import org.springframework.format.annotation.DateTimeFormat

import java.text.SimpleDateFormat

@Transactional
class PersonaService {
    def utilService

    def guardarPersona(params) {
        //opcion 1
        utilService.calcularEdad(params.fechaNacimiento)

        SimpleDateFormat formato= new SimpleDateFormat("dd-MM-yyyy")

       // Persona persona=new Persona(params)

        Persona persona=new Persona(
                nombre: params.nombre,
                apellidoPaterno: params.apellidoPaterno,
                apellidoMaterno: params.apellidoMaterno,
                edad: utilService.calcularEdad(params.fechaNacimiento),
                fechaNacimiento: params.fechaNacimiento,
                direccion: params.direccion,
                localidad: params.localidad,
                pais: params.pais,
                sexo: params.sexo.option,
                telefono: params.telefono

        )
        //Guardar*/

        persona.save(flush: true, failOnError: true)
        persona

    }


    Persona consultarPersona(Long id){
        println id
        Persona persona=  Persona.get(id)
        println persona
        persona

    }

    Persona consultarPersona2(params){
        println(params)
        Persona persona= Persona.get(params)
        println persona
        persona
    }


    def eliminarPersona(Long id){
        Persona persona=new Persona()
        persona.delete(id)
        persona

    }

    Map<Object,Object> listaPersonas (params){
        def mapa=[:]
        println(params)
        List<Persona> listaPersonas=Persona.list([max: params.max, offset: params.offset])
        listaPersonas
        mapa.listaPersonas=listaPersonas
        mapa.totalPersonas=Persona.count()

        mapa

    }



}
