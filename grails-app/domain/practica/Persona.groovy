package practica

class Persona {
    String nombre
    String apellidoPaterno
    String apellidoMaterno
    Date fechaNacimiento
    Integer edad
    String sexo
    String direccion
    String localidad
    String pais
    String telefono


    static constraints = {
        nombre nullable: false, blank: false
        apellidoPaterno nullable: false, blank: false
        apellidoMaterno nullable: true
        edad nullable: true
        fechaNacimiento nullable: true
        sexo nullable: true
        direccion nullable: true
        localidad nullable: true
        pais nullable: true
        telefono nullable: true
    }
}
