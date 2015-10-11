package practica

import grails.transaction.Transactional

@Transactional
class UtilService {

    Integer calcularEdad(Date date){
        Integer edad=new Date().year-date.year
        edad
    }
}
